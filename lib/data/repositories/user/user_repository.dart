import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///Respository class for user-related operation
class UserRepository extends GetxController{
  static UserRepository get instance=> Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;


  ///Function to save userdata to Firestore
 Future<void> saveUserRecord(UserModel user) {
   try{
     await _db.collection('Users').doc(user.id).set(user.toJson())
   }
 }
}