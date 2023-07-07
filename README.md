# Belajar Flutter Animation : Konsep dan Kelas Esensial

**Poin penting untuk diingat :**

Animasi – merupakan kelas inti di perpustakaan animation Flutter– menginterpolasi nilai yang digunakan untuk memandu jalannya sebuah animasi.

Objek Animasi mengetahui status animasi saat ini (misalnya, apakah animasi mulai berjalan, berhenti, atau bergerak maju atau mundur), tetapi komponen ini tidak tahu apapun terkait bentuk yang muncul di layar.

AnimationController dipakai untuk mengelola Animasi.
CurvedAnimation mendefinisikan perkembangan desain dalam bentuk kurva non-linier.

Tween menginterpolasi antara rentang data seperti yang digunakan oleh objek yang dianimasikan. 

Misalnya, Tween mungkin mendefinisikan interpolasi dari merah ke biru, atau dari 0 hingga 255.

Gunakan Listeners dan StatusListeners untuk memantau perubahan status animasi.
---

**Examples of AnimatedWidgets in the Flutter API:** AnimatedBuilder, AnimatedModalBarrier, DecoratedBoxTransition, FadeTransition, PositionedTransition, RelativePositionedTransition, RotationTransition, ScaleTransition, SizeTransition, SlideTransition.
---

**key → Key?**

Controls how one widget replaces another widget in the tree.

final or inherited
---

Simple animations with the Tween class
---
Note: In some cases, a position might exceed the AnimationController’s 0.0-1.0 range. 

For example, the fling() function allows you to provide velocity, force, and position (via the Force object). 

The position can be anything and so can be outside of the 0.0 to 1.0 range.
---

**Late**
Jika kamu ingin memberikan nilai kepada suatu variabel itu nanti, maka kamu bisa menggunakan keyword late. 

Berbeda dengan penggunaan nullable, keyword late yang dipasang ke variabel akan memberi tahu 

kepada compiler bahwa variabel tersebut tidak bernilai null tetapi akan dinisialisasi nanti. 
---

Animation­Controller
AnimationController is a special Animation object that generates a new value whenever the hardware is ready for a new frame.

Tween.animate
To use a Tween object, call animate() on the Tween, passing in the controller object. For example, the following code generates the integer values from 0 to 255 over the course of 500 ms.
---

Dart language tricks: You might not be familiar with Dart’s cascade notation—the two dots in ..addListener(). This syntax means that the addListener() method is called with the return value from animate(). Consider the following example:
---

An AnimatedBuilder understands how to render the transition.
---

Examples of AnimatedBuilders in the Flutter API: BottomSheet, ExpansionTile, PopupMenu, ProgressIndicator, RefreshIndicator, Scaffold, SnackBar, TabBar, TextField.
---

**Shape-shifting effect**

The following example shows how to use the AnimatedContainer widget to animate multiple properties (margin, borderRadius, and color) with different types (double and Color).