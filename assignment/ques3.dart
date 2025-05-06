3)  Write a Java program to create an interface Encryptable with methods encrypt (String data) and decrypt (String encryptedData) that define encryption and decryption operations. Create two classes AES and RSA that implement the Encryptable interface and provide their own encryption and decryption algorithms.

class Encryptable {
  String encrypt(String data) {
    return "";
  }

  String decrypt(String encryptedData) {
    return "";
  }
}

class AES implements Encryptable {
  @override
  String encrypt(String data) {
    return "AES_Encrypted_$data";
  }

  @override
  String decrypt(String encryptedData) {
    return encryptedData.replaceAll("AES_Encrypted_", "");
  }
}

class RSA implements Encryptable {
  @override
  String encrypt(String data) {
    return "RSA_Encrypted_$data";
  }

  @override
  String decrypt(String encryptedData) {
    return encryptedData.replaceAll("RSA_Encrypted_", "");
  }
}

void main() {
  var aes = AES();
  var rsa = RSA();

  var aesEncrypted = aes.encrypt("Hello World");
  print(aesEncrypted); // AES_Encrypted_Hello World
  print(aes.decrypt(aesEncrypted)); // Hello World

  var rsaEncrypted = rsa.encrypt("Hello World");
  print(rsaEncrypted); // RSA_Encrypted_Hello World
  print(rsa.decrypt(rsaEncrypted)); // Hello World
}
