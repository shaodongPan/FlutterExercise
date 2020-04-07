import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: TopBar(),
          ),
          TopMenu(),
          SecondaryMenu(),
          Advertisement(),
          HeaderTitle(),
          TabBarMenu(),
        ],
      ),
    );
  }
}

class TabBarMenu extends StatefulWidget {
  @override
  _TabBarMenuState createState() => _TabBarMenuState();
}

class _TabBarMenuState extends State<TabBarMenu>
    with SingleTickerProviderStateMixin {
  var _tabs = [
    Tab(text: '咨询新知'),
    Tab(text: '二手执照'),
    Tab(text: '知产转让'),
    Tab(text: '地址租赁')
  ];
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(10), right: ScreenUtil().setWidth(10)),
      sliver: SliverToBoxAdapter(
        child: TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black54,
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: TextStyle(fontSize: ScreenUtil().setSp(28)),
          tabs: <Tab>[
            Tab(text: '咨询新知'),
            Tab(text: '二手执照'),
            Tab(text: '知产转让'),
            Tab(text: '地址租赁')
          ],
          indicatorColor: Colors.green,
          controller: _tabController,
        ),
      ),
    );
  }
}

///标题 我的执照
class HeaderTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(40),
          left: ScreenUtil().setWidth(30),
          right: ScreenUtil().setWidth(30)),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '我的执照',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(34),
                  fontWeight: FontWeight.bold),
            ),
            Text('查看执照',
                style: TextStyle(
                    color: Colors.black26,
                    fontSize: ScreenUtil().setSp(28),
                    fontWeight: FontWeight.w400))
          ],
        ),
      ),
    );
  }
}

//广告位
class Advertisement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(
            left: ScreenUtil().setWidth(30),
            top: ScreenUtil().setWidth(30),
            right: ScreenUtil().setWidth(30)),
        child: AspectRatio(
          aspectRatio: 69 / 12,
          child: Image.asset(
            'assets/images/ad1.png',
          ),
        ),
      ),
    );
  }
}

///二级菜单 (发布执照，发布知产，发布租赁，附近门店，更多)
class SecondaryMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(
            left: ScreenUtil().setWidth(37),
            right: ScreenUtil().setWidth(37),
            top: ScreenUtil().setWidth(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: ScreenUtil().setWidth(92),
                  height: ScreenUtil().setWidth(92),
                  child: FlatButton(
                      onPressed: () {},
                      child: Image.asset(

                        'assets/images/nav1.png',

                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                  child: Text(
                    '发布执照',
                    style: TextStyle(
                        color: Colors.black, fontSize: ScreenUtil().setSp(26)),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/nav2.png',
                  width: ScreenUtil().setWidth(92),
                  height: ScreenUtil().setWidth(92),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                  child: Text(
                    '发布知产',
                    style: TextStyle(
                        color: Colors.black, fontSize: ScreenUtil().setSp(26)),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/nav3.png',
                  width: ScreenUtil().setWidth(92),
                  height: ScreenUtil().setWidth(92),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                  child: Text(
                    '发布租赁',
                    style: TextStyle(
                        color: Colors.black, fontSize: ScreenUtil().setSp(26)),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/nav4.png',
                  width: ScreenUtil().setWidth(92),
                  height: ScreenUtil().setWidth(92),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                  child: Text(
                    '附近门店',
                    style: TextStyle(
                        color: Colors.black, fontSize: ScreenUtil().setSp(26)),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/nav5.png',
                  width: ScreenUtil().setWidth(92),
                  height: ScreenUtil().setWidth(92),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                  child: Text(
                    '更多',
                    style: TextStyle(
                        color: Colors.black, fontSize: ScreenUtil().setSp(26)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

///一级菜单 (二手执照，知产转让，地址租赁)
class TopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: ScreenUtil().setHeight(30)),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
              child: Image.asset(
                'assets/images/ershou.png',
                width: ScreenUtil().setWidth(236),
                height: ScreenUtil().setHeight(170),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(5)),
              child: Image.asset(
                'assets/images/zhichan.png',
                width: ScreenUtil().setWidth(236),
                height: ScreenUtil().setHeight(170),
              ),
            ),
            Image.asset(
              'assets/images/dizhi.png',
              width: ScreenUtil().setWidth(236),
              height: ScreenUtil().setHeight(170),
            ),
          ],
        ),
      ),
    );
  }
}

/// 搜索菜单栏
class TopBar extends StatefulWidget {
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 50.0,
      padding: EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "北京市",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(28), color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2, top: 5),
            child: Image.asset('assets/images/down_arrow.png',
                width: ScreenUtil().setWidth(22),
                height: ScreenUtil().setHeight(12)),
          ),
          Stack(
            alignment: AlignmentDirectional.centerEnd,
            children: <Widget>[
              Container(
                width: ScreenUtil().setWidth(560),
                height: ScreenUtil().setHeight(50),
                margin: EdgeInsets.only(left: 10),
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 113, 204, 146),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: TextField(
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.white, fontSize: ScreenUtil().setSp(26)),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText: '请输入您想要搜索的内容',
                      contentPadding: EdgeInsets.only(top: 0, left: 10),
                      hintStyle: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ),
              Positioned(
                  child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  'assets/images/search.png',
                  width: ScreenUtil().setWidth(26),
                  height: ScreenUtil().setWidth(26),
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
