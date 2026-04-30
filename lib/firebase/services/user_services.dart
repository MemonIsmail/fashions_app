import 'package:firebase_auth/firebase_auth.dart';

import '../../model/user_model.dart';
import '../firebase_client.dart';

class UserServices {

  final FirebaseClient _client = FirebaseClient();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  static final UserServices _instance = UserServices._private();

  UserServices._private();

  factory UserServices() => _instance;

  Future<String> addUser(UserModel user) async {

    try{
      UserCredential? credential = await _auth.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );

      if(credential.user?.uid != null){
        final result = await _client.addRequest(
          collectionName: 'users',
          customId: credential.user!.uid,
          data: user.toJson(user)
        );

        if(result.containsKey('error')){
          return 'Some error occurred';
        }
        else{
          return 'User added Successfully';
        }
      }
      else{
        return 'Authentication Failed, please try again later..';
      }
    } on FirebaseAuthException catch(e){
      if(e.code == 'channel-error'){
        return 'Please fill in the empty fields';
      }
      else{
        return e.code;
      }
    } catch(e){
      return 'Some error occurred, please try again later..';
    }
  }

  Future<String> resetPassword({required String email}) async{
    try{
      await _auth.sendPasswordResetEmail(email: email);
      return 'We have sent you the email, please check';
    } on FirebaseAuthException catch(e){
      return e.code;
    } catch (e){
      return 'Some Error Occurred, Please try again later';
    }
  }

  Future<UserModel> login({required String email, required String password}) async {
    try{
      UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password
      );

      final result = await _client.getRequest(
        collectionName: 'users',
        docId: credential.user!.uid
      );

      if(result.containsKey('error')) {
        throw Exception('Some Error Occurred');
      }
      return UserModel.fromJson({
        ...result['data'],
        'id': credential.user!.uid
      });
    } on FirebaseAuthException catch(e){
      if(e.code == 'channel-error')
      {
        throw Exception('Please fill in the Empty fields');
      }
      else{
        throw Exception(e.code);
      }
    } catch(e){
      throw Exception('Some error Occurred, please try again later..');
    }
  }
}