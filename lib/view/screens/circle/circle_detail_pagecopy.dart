import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class CircleDetailPage extends StatelessWidget {
  const CircleDetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: SvgPicture.asset(
                    MyIcons.left,
                    color: whiteConst,
                  ),
                ),
                // floating: appbar qisqarganda toolbar yopilmasligiga javob beradi
                floating: false,
                pinned: true,
                //stretch:  true,
                expandedHeight: 216,
                // TOOLBAR HEIGHT APPBAR TEPASIDAGI TOOL LAR TURADIGAN MAYDON BALANDLIGI
                //toolbarHeight: 100,
                // COLLAPSEDHEIGHT: APPBARNING O'ZGARMAS BALANDLIGI(APPBAR QISQARMAYDIGNA YOPILMAYDIGAN BO'LADI)
                collapsedHeight: 216,
                centerTitle: true,
                elevation: 0,
                automaticallyImplyLeading: true,
                // bottom: AppBar(
                //   leadingWidth: 0,
                //   backgroundColor: whiteConst,
                //   titleSpacing: 0,
                //   elevation: 0,
                //   title: Container(
                //     color: pincAksent,
                //     width: SizeConfig.screenWidth,
                //     alignment: Alignment.centerLeft,
                //     padding: EdgeInsets.fromLTRB(
                //       getUniqueW(18.0),
                //       getUniqueH(16.0),
                //       getUniqueW(18.0),
                //       getUniqueH(16.0),
                //     ),
                //     child: MyTextRegular(
                //       data: 'Notice Group buying dog food.',
                //       color: blackConst,
                //       size: 15,
                //     ),
                //   ),
                // ),
                actions: [
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
                flexibleSpace: FlexibleSpaceBar(
                  title: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: getUniqueH(18.0)),
                    height: 129,
                    width: SizeConfig.screenWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          foregroundImage: NetworkImage(
                              'https://source.unsplash.com/random/2'),
                          radius: 37.0,
                          backgroundColor: greyConst,
                        ),
                        SizedBox(
                          width: getUniqueW(10.0),
                        ),
                        SizedBox(
                          width: getUniqueW(256.0),
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MyTextSemibold(
                                  data: "Dog's Life", size: 24),
                              SizedBox(height: getUniqueH(6.0)),
                              MyTextRegular(
                                  data:
                                      "Dog knowledge sharing, irregularly organized offline exchanges and group buying.",
                                  size: 13,
                                  maxLines: 2),
                              SizedBox(height: getUniqueH(12.0)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                children: [
                                  MyTextRegular(
                                      data: '548 Members', size: 13),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: MyTextRegular(
                                        data: 'Joined', size: 13),
                                    style: ElevatedButton.styleFrom(
                                        primary: blackConst),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  titlePadding: EdgeInsets.only(bottom: getUniqueH(12.0)),
                  background: Container(
                    width: SizeConfig.screenWidth,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://source.unsplash.com/random',
                        ),
                      ),
                    ),
                    child: GlassmorphicFlexContainer(
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
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    physics: const BouncingScrollPhysics(),
                    labelColor: redConst,
                    unselectedLabelColor: blackConst,
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 50),
                    indicator: UnderlineTabIndicator(
                        borderSide:
                            BorderSide(width: getUniqueW(4.0), color: redConst),
                        insets:
                            EdgeInsets.symmetric(horizontal: getUniqueW(20.0))),
                    tabs: [
                      Tab(
                          icon: MyTextMedium(
                        data: 'Dynamic',
                        size: getUniqueW(16),
                      )),
                      Tab(
                          icon: MyTextMedium(
                        data: 'Discuss',
                        size: getUniqueW(16),
                      )),
                      Tab(
                          icon: MyTextMedium(
                        data: 'Select',
                        size: getUniqueW(16),
                      )),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: const Center(
            child: TabBarView(
              children: [
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: whiteConst,
      child: Column(
        children: [
          Container(
            color: pincAksent,
            width: SizeConfig.screenWidth,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(
              getUniqueW(18.0),
              getUniqueH(16.0),
              getUniqueW(18.0),
              getUniqueH(16.0),
            ),
            child: MyTextRegular(
              data: 'Notice Group buying dog food.',
              color: blackConst,
              size: 15,
            ),
          ),
          _tabBar,
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
