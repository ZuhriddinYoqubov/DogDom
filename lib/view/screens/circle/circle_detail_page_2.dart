import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class CircleDetailPage extends StatelessWidget {
  const CircleDetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            buildAppBar(context),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(getUniqueW(18.0), getUniqueW(16.0),
                  getUniqueW(18.0), getUniqueW(10.0)),
              height: getUniqueH(46.0),
              child: MyTextRegular(
                data: 'Notice Group buying dog food',
                size: 15,
              ),
            ),
            Container(
              height: getUniqueH(38.0),
              color: pincAksent,
              child: TabBar(
                    labelColor: redConst,
                    unselectedLabelColor: blackConst,
                    indicatorPadding: const EdgeInsets.symmetric(horizontal: 50),
                    indicator: UnderlineTabIndicator(

          borderSide: BorderSide(width: getUniqueW(4.0), color: redConst),
          insets: EdgeInsets.symmetric(horizontal:getUniqueW(20.0))
        ),
                    tabs: [
                      Tab(icon: MyTextMedium(data: 'Dynamic',size: getUniqueW(16),) ),
                      Tab(icon: MyTextMedium(data: 'Discuss',size: getUniqueW(16),) ),
                      Tab(icon:  MyTextMedium(data: 'Select',size: getUniqueW(16),) ),
                    ],
                  ),
            ),
            const Center(
              child:  TabBarView(
              children: [
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
          ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildAppBar(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: pincAksent,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://source.unsplash.com/random',
            ),
          )),
      height: 228,
      child: Stack(
        children: [
          GlassmorphicFlexContainer(
            alignment: Alignment.bottomCenter,
            borderRadius: 0,
            blur: 20,
            border: 0,
            linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFFffffff).withOpacity(0.1),
                  const Color(0xFFFFFFFF).withOpacity(0.05),
                ],
                stops: const [
                  0.1,
                  1,
                ]),
            borderGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFFffffff).withOpacity(0.5),
                const Color((0xFFFFFFFF)).withOpacity(0.5),
              ],
            ),
            child: null,
          ),
          Column(
            children: [
              // TOOLBAR SECTION
              SafeArea(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: getUniqueW(10.0)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset(
                          MyIcons.left,
                          width: getUniqueW(24.0),
                          color: whiteConst,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        MyIcons.searchBig,
                        width: getUniqueW(24.0),
                        color: whiteConst,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        MyIcons.moreV,
                        width: getUniqueW(24.0),
                        color: whiteConst,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getUniqueH(14.0)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: getUniqueH(18.0)),
                height: 128,
                width: SizeConfig.screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      foregroundImage:
                          NetworkImage('https://source.unsplash.com/random/2'),
                      radius: 37.0,
                      backgroundColor: greyConst,
                    ),
                    SizedBox(
                      width: getUniqueW(10.0),
                    ),
                    SizedBox(
                      width: getUniqueW(256.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyTextSemibold(
                            data: "Dog's Life",
                            size: 24,
                            color: whiteConst,
                          ),
                          SizedBox(height: getUniqueH(6.0)),
                          MyTextRegular(
                              data:
                                  "Dog knowledge sharing, irregularly organized offline exchanges and group buying.",
                              size: 13,
                              color: whiteConst,
                              maxLines: 2),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              MyTextRegular(
                                data: '548 Members',
                                size: 13,
                                color: whiteConst,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: MyTextRegular(
                                  data: 'Joined',
                                  size: 13,
                                  color: whiteConst,
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: blackConst),
                              ),
                            ],
                          ),
                          SizedBox(height: getUniqueH(11.0)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
