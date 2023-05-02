import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(   //многострочный текст
    child: Text('This is some very very very large text that is too big to fit a regular screen in a single line.', textDirection: TextDirection.ltr,),
);
    
    
    
    
    
//     FittedBox(   //растягивание текста по всей ширине
//     child: Text('Some Example Text witn no regrets', textDirection: TextDirection.ltr),
// );
    
    
    
    
//     OverflowBox(  // любой размер вообще без ограничений
//     minWidth: 0.0,
//     minHeight: 0.0,
//     maxWidth: double.infinity,
//     maxHeight: double.infinity,
//     child: Container(color: Colors.red, width: 4000, height: 50),
// );

//UnconstrainedBox(  //любой размер с ограничениями по полям девайса
//    child: Container(color: Colors.red, width: 20, height: 50),
// );
    

    
    // Center(
    //   child: ConstrainedBox( //любые размеры с ограничениями 
    //    constraints: BoxConstraints(
    //     minWidth: 70, 
    //     minHeight: 70,
    //     maxWidth: 150, 
    //     maxHeight: 150,
    //    ),
    //    child: Container(color: Colors.red, width: 100, height: 100),
    // ),
    // );
  }
}
