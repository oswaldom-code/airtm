import 'package:airtm/utils/airtm_colors.dart';
import 'package:flutter/material.dart';

class IniciarView extends StatefulWidget {
  @override
  _IniciarViewState createState() => _IniciarViewState();
}

class _IniciarViewState extends State<IniciarView> {
  List _country = [
    'AFGANISTAN',
    'ALBANIA',
    'ALEMANIA',
    'ANDORRA',
    'ANGOLA',
    'ANGUILLA',
    'ANTIGUA Y BARBUDA',
    'ANTILLAS HOLANDESAS',
    'ARABIA SAUDI',
    'ARGELIA',
    'ARGENTINA',
    'ARMENIA',
    'ARUBA',
    'AUSTRALIA',
    'AUSTRIA',
    'AZERBAIYAN',
    'BAHAMAS',
    'BAHREIN',
    'BANGLADESH',
    'BARBADOS',
    'BELARUS',
    'BELGICA',
    'BELICE',
    'BENIN',
    'BERMUDAS',
    'BHUTÁN',
    'BOLIVIA',
    'BOSNIA Y HERZEGOVINA',
    'BOTSWANA',
    'BRASIL',
    'BRUNEI',
    'BULGARIA',
    'BURKINA FASO',
    'BURUNDI',
    'CABO VERDE',
    'CAMBOYA',
    'CAMERUN',
    'CANADA',
    'CHAD',
    'CHILE',
    'CHINA',
    'CHIPRE',
    'COLOMBIA',
    'COMORES',
    'CONGO',
    'COREA',
    'COREA DEL NORTE ',
    'COSTA DE MARFIL',
    'COSTA RICA',
    'CROACIA',
    'CUBA',
    'DINAMARCA',
    'DJIBOUTI',
    'DOMINICA',
    'ECUADOR',
    'EGIPTO',
    'EL SALVADOR',
    'EMIRATOS ARABES UNIDOS',
    'ERITREA',
    'ESLOVENIA',
    'ESPAÑA',
    'ESTADOS UNIDOS DE AMERICA',
    'ESTONIA',
    'ETIOPIA',
    'FIJI',
    'FILIPINAS',
    'FINLANDIA',
    'FRANCIA',
    'GABON',
    'GAMBIA',
    'GEORGIA',
    'GHANA',
    'GIBRALTAR',
    'GRANADA',
    'GRECIA',
    'GROENLANDIA',
    'GUADALUPE',
    'GUAM',
    'GUATEMALA',
    'GUAYANA FRANCESA',
    'GUERNESEY',
    'GUINEA',
    'GUINEA ECUATORIAL',
    'GUINEA-BISSAU',
    'GUYANA',
    'HAITI',
    'HONDURAS',
    'HONG KONG',
    'HUNGRIA',
    'INDIA',
    'INDONESIA',
    'IRAN',
    'IRAQ',
    'IRLANDA',
    'ISLA DE MAN',
    'ISLA NORFOLK',
    'ISLANDIA',
    'ISLAS ALAND',
    'ISLAS CAIMÁN',
    'ISLAS COOK',
    'ISLAS DEL CANAL',
    'ISLAS FEROE',
    'ISLAS MALVINAS',
    'ISLAS MARIANAS DEL NORTE',
    'ISLAS MARSHALL',
    'ISLAS PITCAIRN',
    'ISLAS SALOMON',
    'ISLAS TURCAS Y CAICOS',
    'ISLAS VIRGENES BRITANICAS',
    'ISLAS VÍRGENES DE LOS ESTADOS UNIDOS',
    'ISRAEL',
    'ITALIA',
    'JAMAICA',
    'JAPON',
    'JERSEY',
    'JORDANIA',
    'KAZAJSTAN',
    'KENIA',
    'KIRGUISTAN',
    'KIRIBATI',
    'KUWAIT',
    'LAOS',
    'LESOTHO',
    'LETONIA',
    'LIBANO',
    'LIBERIA',
    'LIBIA',
    'LIECHTENSTEIN',
    'LITUANIA',
    'LUXEMBURGO',
    'MACAO',
    'MACEDONIA ',
    'MADAGASCAR',
    'MALASIA',
    'MALAWI',
    'MALDIVAS',
    'MALI',
    'MALTA',
    'MARRUECOS',
    'MARTINICA',
    'MAURICIO',
    'MAURITANIA',
    'MAYOTTE',
    'MEXICO',
    'MICRONESIA',
    'MOLDAVIA',
    'MONACO',
    'MONGOLIA',
    'MONTENEGRO',
    'MONTSERRAT',
    'MOZAMBIQUE',
    'MYANMAR',
    'NAMIBIA',
    'NAURU',
    'NEPAL',
    'NICARAGUA',
    'NIGER',
    'NIGERIA',
    'NIUE',
    'NORUEGA',
    'NUEVA CALEDONIA',
    'NUEVA ZELANDA',
    'OMAN',
    'OTROS PAISES  O TERRITORIOS DE AMERICA DEL NORTE',
    'OTROS PAISES O TERRITORIOS  DE SUDAMERICA',
    'OTROS PAISES O TERRITORIOS DE AFRICA',
    'OTROS PAISES O TERRITORIOS DE ASIA',
    'OTROS PAISES O TERRITORIOS DE LA UNION EUROPEA',
    'OTROS PAISES O TERRITORIOS DE OCEANIA',
    'OTROS PAISES O TERRITORIOS DEL CARIBE Y AMERICA CENTRAL',
    'OTROS PAISES O TERRITORIOS DEL RESTO DE EUROPA',
    'PAISES BAJOS',
    'PAKISTAN',
    'PALAOS',
    'PALESTINA',
    'PANAMA',
    'PAPUA NUEVA GUINEA',
    'PARAGUAY',
    'PERU',
    'POLINESIA FRANCESA',
    'POLONIA',
    'PORTUGAL',
    'PUERTO RICO',
    'QATAR',
    'REINO UNIDO',
    'REP.DEMOCRATICA DEL CONGO',
    'REPUBLICA CENTROAFRICANA',
    'REPUBLICA CHECA',
    'REPUBLICA DOMINICANA',
    'REPUBLICA ESLOVACA',
    'REUNION',
    'RUANDA',
    'RUMANIA',
    'RUSIA',
    'SAHARA OCCIDENTAL',
    'SAMOA',
    'SAMOA AMERICANA',
    'SAN BARTOLOME',
    'SAN CRISTOBAL Y NIEVES',
    'SAN MARINO',
    'SAN MARTIN (PARTE FRANCESA)',
    'SAN PEDRO Y MIQUELON ',
    'SAN VICENTE Y LAS GRANADINAS',
    'SANTA HELENA',
    'SANTA LUCIA',
    'SANTA SEDE',
    'SANTO TOME Y PRINCIPE',
    'SENEGAL',
    'SERBIA',
    'SEYCHELLES',
    'SIERRA LEONA',
    'SINGAPUR',
    'SIRIA',
    'SOMALIA',
    'SRI LANKA',
    'SUDAFRICA',
    'SUDAN',
    'SUECIA',
    'SUIZA',
    'SURINAM',
    'SVALBARD Y JAN MAYEN',
    'SWAZILANDIA',
    'TADYIKISTAN',
    'TAILANDIA',
    'TANZANIA',
    'TIMOR ORIENTAL',
    'TOGO',
    'TOKELAU',
    'TONGA',
    'TRINIDAD Y TOBAGO',
    'TUNEZ',
    'TURKMENISTAN',
    'TURQUIA',
    'TUVALU',
    'UCRANIA',
    'UGANDA',
    'URUGUAY',
    'UZBEKISTAN',
    'VANUATU',
    'VENEZUELA',
    'VIETNAM',
    'WALLIS Y FORTUNA',
    'YEMEN',
    'ZAMBIA',
    'ZIMBABWE'
  ];

  String _countryValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Esta cuenta es',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: AirtmColors.blue,
      ),
      body: Container(
        color: AirtmColors.blue,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: <Widget>[
                /// ---> Personal and business bottom
                Container(
                  width: double.infinity,
                  //color: Colors.yellow,
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AirtmColors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.5),
                            ),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: null),
                              );
                            },
                            child: Text(
                              'individual',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AirtmColors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.5),
                            ),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: null),
                              );
                            },
                            child: Text(
                              'negocio',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                /// End Personal and business bottom

                SizedBox(
                  height: 30,
                ),
////////////////////////////////////////////////////////////
                // --> Country help text
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'País en el que vives',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // End Country help text

                SizedBox(
                  height: 10,
                ),

                Container(
                  width: 400,
                  height: 40,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: AirtmColors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton(
                      isDense: true,
                      hint: Text('Pais...'),
                      isExpanded: true,
                      elevation: 5,
                      value: _countryValue,
                      onChanged: (value) {
                        setState(() {
                          _countryValue = value;
                        });
                      },
                      items: _country.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                )
              ]),
            ),

            SizedBox(
              height: 80,
            ),

            /// ---> Next and Create count with Google or Facebook bottom
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AirtmColors.navyBlue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.5),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: null),
                        );
                      },
                      child: Text(
                        'Siguiente',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ---> SignIn Google an Facebook botoms
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  //Nota: pending task: SignIn Google an Facebook botoms
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.5),
                  ),
                ),
              ),
            )
            // End SignIn Google an Facebook botoms
            // End Next and Create count with Google or Facebook bottom
          ],
        ),
      ),
    );
  }
}
