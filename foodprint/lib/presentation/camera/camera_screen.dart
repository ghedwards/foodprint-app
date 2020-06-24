import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:foodprint/application/restaurants/restaurant_search_bloc.dart';
import 'package:foodprint/domain/auth/value_objects.dart';
import 'package:foodprint/domain/foodprint/foodprint_entity.dart';
import 'package:foodprint/domain/restaurants/restaurant_entity.dart';
import 'package:foodprint/injection.dart';
import 'package:foodprint/presentation/camera/restaurant_listing.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  final FoodprintEntity oldFoodprint;
  final UserID userID;
  final LatLng location;

  const Camera({Key key, @required this.userID, @required this.location, @required this.oldFoodprint})
      : super(key: key);
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File _imageFile;
  FileImage loadedImage;

  @override
  Widget build(BuildContext context) {
    if (_imageFile == null) {
      _takePhoto(ImageSource.camera, context);
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.orange,
          ),
        ),
      );
    } else {
      return BlocProvider(
        create: (context) => getIt<RestaurantSearchBloc>()
          ..add(RestaurantSearched(
              latitude: widget.location.latitude,
              longitude: widget.location.longitude)),
        child: WillPopScope(
          onWillPop: _onWillPop,
          child: BlocBuilder(
            builder: (context, state) {
              // TODO: Handle search state error
              return Scaffold(
                body: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitHeight, image: loadedImage)),
                  child: Stack(children: [
                    Positioned(
                        top: 30,
                        left: 10,
                        child: IconButton(
                          icon: const Icon(
                            Icons.cancel,
                            color: Colors.red,
                            size: 50.0,
                          ),
                          onPressed: () => Navigator.pop(context),
                        )),
                    Positioned(
                      left: 10,
                      bottom: 20,
                      child: IconButton(
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        onPressed: _clear,
                      ),
                    ),
                    Positioned(
                        bottom: 20,
                        right: 30,
                        child: (state is SearchStateSuccess)
                            ? customButton(context, state.restaurants)
                            : const SpinKitRing(
                                color: Colors.blue,
                                size: 40.0,
                              )),
                  ]),
                ),
              );
            },
          ),
        ),
      );
    }
  }

  Future<void> _takePhoto(ImageSource source, BuildContext context) async {
    final _picker = ImagePicker();
    final PickedFile image =
        await _picker.getImage(source: source, imageQuality: 70);
    if (image == null) {
      // Back button pressed
      Navigator.pop(context);
      return;
    }

    final File imageFile = File(image.path);
    loadedImage = FileImage(imageFile);
    await precacheImage(loadedImage, context); // precache the image

    // Image file
    if (mounted) {
      setState(() {
        _imageFile = imageFile;
      });
    }
  }

  // Cropper plugin
  Future<void> _cropImage() async {
    final File cropped = await ImageCropper.cropImage(
      sourcePath: _imageFile.path,
      androidUiSettings: const AndroidUiSettings(
          toolbarTitle: 'Cropper',
          toolbarColor: Colors.deepOrange,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false),
    );
    if (mounted) {
      setState(() {
        _imageFile = cropped;
      });
    }
  }

  // Remove image
  void _clear() {
    if (mounted) setState(() => _imageFile = null);
  }

  Widget customButton(
      BuildContext context, List<RestaurantEntity> restaurants) {
    return Container(
      width: 60,
      height: 60,
      child: Material(
          type: MaterialType.transparency,
          child: Ink(
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(1000.0),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RestaurantListing(
                            oldFoodprint: widget.oldFoodprint,
                            userID: widget.userID,
                            imageFile: _imageFile,
                            restaurants: restaurants)));
              },
              child: const Icon(
                Icons.navigate_next,
                size: 50.0,
                color: Colors.white,
              ),
            ),
          )),
    );
  }

  // Show confirmation dialog
  Future<bool> _onWillPop() async {
    return (await showDialog(
            context: context,
            builder: (context) => Dialog(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Container(
                    height: 200,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text(
                            "Are you sure you want to \n discard your photo?",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.black, fontSize: 14.0),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        ButtonTheme(
                          minWidth: 200,
                          height: 50,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            color: Colors.black87,
                            onPressed: () => Navigator.of(context).pop(true),
                            child: const Text(
                              "Confirm",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        FlatButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text(
                            "Cancel",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ))) ??
        false;
  }
}
