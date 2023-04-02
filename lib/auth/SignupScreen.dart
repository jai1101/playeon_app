// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_toast_message/flutter_toast_message.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:playeon/auth/api_controller.dart';
import 'package:playeon/auth/login_screen.dart';
import 'package:playeon/auth/signupscreen2.dart';
import 'package:playeon/auth/user_model.dart';

import 'package:playeon/walkscreen/walkthrough.dart';
import 'package:playeon/widgets/style.dart';

import '../widgets/common.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isValid = false;
  List<String> citiesList = [
    "Abbottabad",
    "Adezal",
    "Ali Bandar",
    "Amir Chah",
    "Attock",
    "Ayubia",
    "Bahawalpur",
    "Baden",
    "Bagh",
    "Bahawalnagar",
    "Burewala",
    "Banda Daud Shah",
    "Bannu districtBannu",
    "Batagram",
    "Bazdar",
    "Bela",
    "Ballpat",
    "Bhag",
    "Bhakkar",
    "Bhalwal",
    "Bhimber",
    "Birote",
    "Buner",
    "Burj",
    "Chiniot",
    "Chachro",
    "Chagai",
    "Chah Sandan",
    "Chailianwala",
    "Chakwal",
    "Chaman",
    "Charasadda",
    "Chhatr",
    "Chichawatni",
    "Chitral",
    "Dadu",
    "Dera Ghazi Khan",
    "Dalbandin",
    "Dargai",
    "Darya khan",
    "Daska",
    "Dera Bugti",
    "Dhana Sar",
    "Digri",
    "Dina",
    "Dinga",
    "Diplo",
    "Diwana",
    "Dokri",
    "Drosh",
    "Duki",
    "Dushi",
    "Duzab",
    "Faisalabad",
    "Fateh Jang",
    "Ghotki",
    "Gwadar",
    "Gujarnwala",
    "Gujrat",
    "Gadra",
    "Gajar",
    "Gandava",
    "Garhi Khairo",
    "Garruck",
    "Ghakhar Mandi",
    "Ghanian",
    "Ghauspur",
    "Ghazluna",
    "Girdan",
    "Gulistan",
    "Gwash",
    "Hyderabad",
    "Hala",
    "Haripur",
    "Hub Chauki",
    "Hafizabad",
    "Hameedabad",
    "Hangu",
    "Hasilpur",
    "Haveli Lakha",
    "Hinglaj",
    "Hoshab",
    "Islamabad",
    "Islamkot",
    "Ispikan",
    "Jacobabad",
    "Jamshoro",
    "Jhang",
    "Jhelum",
    "Jamesbad",
    "Jampur",
    "Janghar",
    "Jati",
    "Jauharabad",
    "Jhal",
    "Jhal Jhao",
    "Jhatpat",
    "Jhudo",
    "Jiwani",
    "Jungshahi",
    "Karachi",
    "Kotri",
    "Lahore",
    "Larkana",
    "Lahri",
    "Lakki Marwat",
    "Lasbela",
    "Latamber",
    "Layyah",
    "Leiah",
    "Liari",
    "Lodhran",
    "Loralai",
    "Lower Dir",
    "Shadan Lund ",
    "Multan",
    "Mandi Bahuddin",
    "Mansehra",
    "Mian Chanu",
    "Mirpur",
    "Moro",
    "Mardan",
    "Mach",
    "Madyan",
    "Malakand",
    "Mand",
    "Mangchar",
    "Mashki Chah",
    "Maslti",
    "Mastuj",
    "Mastung",
    "Mathi",
    "Matiari",
    "Mehar",
    "Mekhtar",
    "Merui",
    "Mianwali",
    "Mianez",
    "Mirpur Batoro",
    "Mirpur Khas",
    "Mirpur Sakro",
    "Mithi",
    "Mongora",
    "Murgha Kibzai",
    "Muridke",
    "Muzaffar",
    "Nawabshah",
    "Nazimabad",
    "Nowshera",
    "Nagar Parkar",
    "Nagha Kalat",
    "Nal",
    "Naokot",
    "Nasirabad",
    "Nauroz Kalat",
    "Naushara",
    "Nur Gamma ",
    "Nukhsi",
    "Nuttal",
    "Okara",
    "Ormara",
    "Peshawar",
    "Panjgur",
    "Pasni City",
    "Paharpur",
    "Palantuk",
    "Pendoo",
    "Piharak",
    "Pirmahal",
    "Pishin",
    "Plandri",
    "Porkan",
    "Pounch",
    "Quetta",
    "Qamber",
    "Qamruddin Karez",
    "Qazi Ahmad",
    "Qila Ahmad",
    "Qila Abdullah",
    "Qila Safed",
    "Qila Saifullah",
    "Rawalpindi",
    "Rabwah",
    "Rahim Yar Khan",
    "Rajan Pur",
    "Rakhni",
    "Rani pur",
    "Ratodero",
    "Rawalakot",
    "Renala Khurd",
    "Robat Thana",
    "Rodkhan",
    "Rohri",
    "Sialkot",
    "Sadiqabad",
    "Safdar Abad",
    "Sahiwal",
    "Saindak",
    "Sakrand",
    "Sanjawi",
    "Sargodha",
    "Saruna",
    "Shabaz Kalat",
    "Shadadkhot",
    "Shahbandar",
    "Shahpur",
    "Shahpur Chakar",
    "Shakargarh",
    "Shangla",
    "Sharam Jogizai",
    "Shikarpur",
    "Shingar",
    "Shorap",
    "Sibi",
    "Sohawa",
    "Sooianwala",
    "Spenzand",
    "Spintangi",
    "Sui",
    "Sujawal",
    "Sukkur",
    "Suntsar",
    "Surab",
    "Swabi",
    "Swat",
    "Tando Adam ",
    "Tando Bago",
    "Tangi",
    "Tank city",
    "Tar Ahamd Rind",
    "Thalo",
    "Thatta",
    "Toba Tek Singh",
    "Tordher",
    "Tujal",
    "Tump",
    "Turbat",
    "Umarao",
    "Umarkot",
    "Upper Dir",
    "Uthal",
    "Vahari",
    "Veirwaro",
    "Vitakri",
    "Wadh",
    "Wah Cantt",
    "Washap",
    "Wasjuk",
    "Wazirabad",
    "Yakmach",
    "Zhob",
    "other"
  ];
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  TextEditingController codeController = TextEditingController();
  String? cityController;
  validate() {
    if (nameController.text.isNotEmpty) {
      if (emailController.text.isNotEmpty) {
        if (usernameController.text.isNotEmpty) {
          if (passwordController.text.isNotEmpty) {
            if (numberController.text.isNotEmpty) {
              if (cityController!.isNotEmpty) {
                if (codeController.text.isNotEmpty) {
                  isValid = true;
                } else {
                  Fluttertoast.showToast(
                      msg: "Plase Select Code",
                      toastLength: Toast.LENGTH_SHORT);
                }
              } else {
                Fluttertoast.showToast(
                    msg: "Plase Select City", toastLength: Toast.LENGTH_SHORT);
              }
            } else {
              Fluttertoast.showToast(
                  msg: "Plase Enter Phone Number",
                  toastLength: Toast.LENGTH_SHORT);
            }
          } else {
            Fluttertoast.showToast(
                msg: "Plase Enter password",
                toastLength: Toast.LENGTH_SHORT); //password
          }
        } else {
          Fluttertoast.showToast(
              msg: "Plase enter Email", toastLength: Toast.LENGTH_SHORT);
        }
      } else {
        Fluttertoast.showToast(
            msg: "Plase Username Code", toastLength: Toast.LENGTH_SHORT);
      }
    } else {
      Fluttertoast.showToast(
          msg: "Plase Enter name", toastLength: Toast.LENGTH_SHORT);
    }
    return isValid;
  }

  userCreate() async {
    if (validate()) {
      UserModel user = UserModel(
        name: nameController.text,
        username: usernameController.text,
        email: emailController.text,
        password: passwordController.text,
        phone: numberController.text,
        country: cityController,
      );
      print("User $user");
      var response = await ApiController().trailUserCreate(user);
      print(response);
      if (response is Map) {
        if (response['status']) {
          // UserModel userDetails = UserModel.fromJson(response['data']);
        } else {
          Fluttertoast.showToast(
              msg: response['msg'], toastLength: Toast.LENGTH_SHORT);
        }
      } else {
        Fluttertoast.showToast(msg: response, toastLength: Toast.LENGTH_SHORT);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: primaryColorB,
            height: size.height,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.08, horizontal: size.width * 0.1),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VariableText(
                      text: "Welcome!",
                      fontsize: size.height * 0.040,
                      fontFamily: fontBold,
                      weight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    VariableText(
                      text: "It only takes a minute",
                      fontsize: size.height * 0.016,
                      fontFamily: fontMedium,
                      weight: FontWeight.w500,
                      max_lines: 2,
                    ),

                    //!Name
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    CustomTextField(
                      cont: nameController,
                      hintTxt: "Name",
                    ),

                    //!UserName
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    CustomTextField(
                      cont: usernameController,
                      hintTxt: "Username",
                    ),
                    //!User Email
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    CustomTextField(
                      cont: emailController,
                      hintTxt: "Email",
                    ),

                    //!User Password
                    SizedBox(
                      height: size.height * 0.01,
                    ),

                    CustomPasswordField(
                      cont: passwordController,
                      hintTxt: "Password",
                    ),
                    //!User Number
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    CustomTextField(
                      cont: numberController,
                      hintTxt: "Number",
                      inputType: TextInputType.number,
                    ),
                    Container(
                        // color: Colors.black ,
                        child: InputDecorator(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                    hint: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: StreamBuilder<Object>(
                                          stream: null,
                                          builder: (context, snapshot) {
                                            return VariableText(
                                              text: "Choose Your City",
                                              fontFamily: fontMedium,
                                              fontcolor: textColorH,
                                              fontsize: size.height * 0.016,
                                            );
                                          }),
                                    ),
                                    value: cityController,
                                    isExpanded: true,
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                    },
                                    onChanged: (String? value) {
                                      {
                                        setState(() {
                                          cityController = value;
                                        });
                                      }
                                    },
                                    style: TextStyle(
                                        fontSize: size.height * 0.016,
                                        color: textColorH),
                                    items: citiesList
                                        .map<DropdownMenuItem<String>>(
                                            (String item) {
                                      return DropdownMenuItem<String>(
                                        value: item,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            VariableText(
                                              text: item,
                                              fontsize: size.height * 0.016,
                                              fontcolor: primaryColor1,
                                              fontFamily: fontMedium,
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList())))),

                    //!User Refereal Code
                    CustomTextField(
                      cont: codeController,
                      hintTxt: "Enter Your Referal Code",
                    ),

                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    MyButton(
                      btnHeight: size.height * 0.055,
                      btnWidth: size.width,
                      btnTxt: "Sign Up",
                      btnColor: primaryColor1,
                      btnRadius: 25,
                      borderColor: Colors.green,
                      txtColor: Colors.white,
                      fontSize: 20,
                      onTap: () {
                        userCreate();
                        // Navigator.push(
                        //     context,
                        //     SwipeLeftAnimationRoute(
                        //         milliseconds: 200, widget: SignupScreen2()));
                      },
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
