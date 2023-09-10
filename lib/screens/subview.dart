import 'package:flutter/material.dart';
import 'package:hongmumuk/screens/view.dart';
import 'detail_view/detail_page.dart';

class SubView extends StatefulWidget {
  final String type;
  final List<String> restaurantList;
  final Color containerColor;

  const SubView({
    Key? key,
    required this.type,
    required this.restaurantList,
    required this.containerColor,
  }) : super(key: key);

  @override
  _SubViewState createState() => _SubViewState();
}

class _SubViewState extends State<SubView> {

  double getHeightMultiplier(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    if (screenHeight >= 1000) {
      return 0.2;
    } else if (screenHeight >= 700) {
      return 0.17;
    } else {
      return 0.12;
    }
  }

  double getFontSize(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    if (screenHeight >= 1000) {
      return 28;
    } else if (screenHeight >= 700) {
      return 20;
    } else {
      return 20;
    }
  }

  @override
  Widget build(BuildContext context) {
    double heightMultiplier = getHeightMultiplier(context);
    double fontSize = getFontSize(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height) * heightMultiplier,
          ),
          // SizedBox(
          //   height: (MediaQuery.of(context).size.height) * 0.1,
          //   child: Text(
          //     widget.type,
          //     style: TextStyle(
          //       color: Colors.black,
          //       fontSize: MediaQuery.of(context).size.width * 0.08,
          //       fontWeight: FontWeight.w800,
          //     ),
          //   ),
          // ),
          Expanded(
            child: SizedBox(
              height: (MediaQuery.of(context).size.height) * 0.5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: widget.restaurantList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        showDetailPage(context, widget.restaurantList[index], widget.type);
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: widget.containerColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (widget.restaurantList[index].length >= 8)
                              Text(
                                widget.restaurantList[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: fontSize,
                                  letterSpacing: -1,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )
                            else
                              FittedBox(
                                child: Text(
                                  widget.restaurantList[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: fontSize,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                0, MediaQuery.of(context).size.height * 0.02,
                0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 1,),
                SizedBox(
                  height: (MediaQuery.of(context).size.height) * 0.06,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(
                        context, MaterialPageRoute(
                          builder: (context) => ViewScreen()),
                      );
                    },
                    borderRadius: BorderRadius.circular(
                        (MediaQuery.of(context).size.height) * 0.06),
                    child: Image.asset(
                      'assets/image/뒤로가기.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Spacer(flex: 1,),
              ],
            ),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height) * heightMultiplier,
          ),
        ],
      ),
    );
  }
}
