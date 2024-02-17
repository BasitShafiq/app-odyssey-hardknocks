import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resturant/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  var loading = false.obs;

  //SIGN IN
  // Future<UserCredential?> signIn({context}) async {
  //   UserCredential? userCredential;

  //   try {
  //     userCredential = await auth.signInWithEmailAndPassword(
  //         email: emailController.text, password: passwordController.text);
  //   } on FirebaseAuthException catch (e) {
  //     VxToast.show(context, msg: e.toString());
  //   }
  //   return userCredential;
  // }

//SignUp
  // Future<UserCredential?> signUp({email, password, context}) async {
  //   UserCredential? userCredential;

  //   try {
  //     userCredential = await auth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //   } on FirebaseAuthException catch (e) {
  //     VxToast.show(context, msg: e.toString());
  //   }
  //   return userCredential;
  // }

  // storageUserData({email, password, name}) async {
  //   DocumentReference docRef =
  //       fireStore.collection(userCollection).doc(currentUser!.uid);
  //   await docRef.set({
  //     'id': currentUser!.uid,
  //     'email': email,
  //     'password': password,
  //     'name': name,
  //     'imageURL': '',
  //     'cart': '0',
  //     'wishlist': '0',
  //     'orders': '0'
  //   });
  // }

  //Logout
  // logout(context) async {
  //   try {
  //     await auth.signOut();
  //   } catch (e) {
  //     VxToast.show(context, msg: e.toString());
  //   }
  // }
}
