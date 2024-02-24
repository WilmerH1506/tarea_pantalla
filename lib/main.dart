import 'package:flutter/material.dart';

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi primer App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.deepPurple,
    );

    return DefaultTabController(
      
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          
          
          title: const Text(
            'Cuenta de Google',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon : const Icon(Icons.help_outline),
              onPressed: ()
              {
                 
              },
            ),
            IconButton(
              icon : const Icon(Icons.search),
              onPressed: ()
              {

              },
            ),
             IconButton(
              icon : const Icon(Icons.account_circle),
              onPressed: ()
              {

              },
            )
          ],
          backgroundColor: const Color.fromRGBO(156, 156, 156, 0.4),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Página principal'),
              Tab(text: 'Información Personal'),
              Tab(text: 'Datos y privacidad',)
            ],
          ),
        ),
        
        
        body: TabBarView(
          
          children: [
                    
           Container(
             padding: const EdgeInsets.all(20),
             child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children : 
                        [
                          const Text('Tu cuenta está protegida',
                          style: TextStyle(fontSize: 18),
                          ),
                         const Padding(padding: EdgeInsets.all(2)),
                              Row(
                                 children: [
                                  const  Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [        
                                         Text('La Verificacion de seguridad revisó', style: TextStyle(fontSize: 14),),
                                         Text('tu cuenta y no encontró acciones',style: TextStyle(fontSize: 14),),
                                         Text('recomendadas',style: TextStyle(fontSize: 14),),
                                         Padding(padding: EdgeInsets.all(4)),
                                         Text('Ver detalles',style: TextStyle(color: Colors.purpleAccent)),
                                      ],
                                    ),
                                    Transform.translate(offset: const Offset(50, -30), child: const FlutterLogo(size: 46,),)
                                 ], 
                              ),  

                        const Text('______________________________________________________',
                        style: TextStyle(color: Color.fromRGBO(156, 156, 156, 0.6)),
                        ),   
      
                        const Text('Verificación de privacidad',style: TextStyle(fontSize: 18),),
                        const Padding(padding: EdgeInsets.all(2)),

                            Row(
                                 children: [
                                   const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [        
                                         Text('Elige la configuración de privacidad'),
                                         Text('indicada para ti con esta guía paso a paso'),
                                         Padding(padding: EdgeInsets.all(4)),
                                         Text('Realizar la Verificación de privacidad',
                                         style: TextStyle(color: Colors.purpleAccent),),
                                         Padding(padding: EdgeInsets.all(4)),
                                      ],
                                    ),
                                   Transform.translate(offset: const Offset(10, -30), child: const FlutterLogo(size: 46,),)
                                 ], 
                              ),    
                          
                        const Text('______________________________________________________',
                        style: TextStyle(color: Color.fromRGBO(156, 156, 156, 0.6)),
                        ),
                        const Text('¿Buscas otra información?', style: TextStyle(fontSize: 18)),
                        
                         Row(
                          children: [
                              IconButton(
                                     icon : const Icon(Icons.search),
                                     onPressed: () {},
                                       ),
                              const Text('Buscar en la Cuenta de Google',style: TextStyle(fontSize: 14),),
                              const SizedBox(width: 45,),
                              IconButton(
                                onPressed: () {} , 
                                icon: const Icon(Icons.arrow_forward_ios)
                                )
                          ],
                         ),
                         Row(
                          children: [
                              IconButton(
                                     icon : const Icon(Icons.help_outline),
                                     onPressed: () {},
                                       ),
                              const Text('Ver las opciones de ayuda',style: TextStyle(fontSize: 14),),
                              const SizedBox(width: 75,),
                              IconButton(
                                onPressed: () {} , 
                                icon: const Icon(Icons.arrow_forward_ios)
                                )
                          ],
                         ),
                         Row(
                          children: [
                              IconButton(
                                     icon : const Icon(Icons.announcement_outlined),
                                     onPressed: () {},
                                       ),
                              const Text('Enviar comentarios',style: TextStyle(fontSize: 14),),
                              const SizedBox(width: 120,),
                              IconButton(
                                onPressed: () {} , 
                                icon: const Icon(Icons.arrow_forward_ios)
                                )
                          ],
                         ),

                        const Text('_____________________________________________________',
                              style: TextStyle(color: Color.fromRGBO(156, 156, 156, 0.6)),
                          ),
                        const Padding(padding: EdgeInsets.all(10)),
                        
                       Column(
                          children: [
                            Row(
                              children: [
                              const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Text('Solo tú puedes ver la configuración. También',style: TextStyle(fontSize: 12),),
                                     Text('puedes revisar la configuración de Maps, la',style: TextStyle(fontSize: 12),),
                                     Text('Búsqueda o cualquier servicio de Google que uses',style: TextStyle(fontSize: 12),),
                                     Text('con frecuencia. Google protege la privacidad y la',style: TextStyle(fontSize: 12),),
                                    Row(
                                      children: [
                                         Text('seguridad de tus datos. ',style: TextStyle(fontSize: 12),),
                                         Text('Más información',style: TextStyle(color: Colors.deepPurple,fontSize: 12),),
                                      ],
                                    )
                                    
                                  ],
                                ),
                                Transform.translate(
                                  offset: const Offset(-65, 34,),
                                  child: IconButton(
                                    onPressed: () {}, 
                                    icon: const Icon(Icons.help_outline),
                                    color: Colors.deepPurple,
                                    iconSize: 15,
                                    ),
                                  ),
                                Transform.translate(offset: const Offset(-20, 0),child: const FlutterLogo(size: 24,),)
                              ],
                            )
                          ],
                        )
                          
                        ],
                    ),
                ],
              )
            ),

            const Center(
              child: Text(
                'Informacion Personal',
                style: textStyle,
              ),
            ),
            const Center(
              child: Text(
                'Datos y privacidad',
                style: textStyle,
              ),
            )   
             ]
           ),
        ),
      );
  }
}
