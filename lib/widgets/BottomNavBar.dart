import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:startup_namer/ScreenList.dart';

class BottomNavBar extends StatefulWidget{
  final List<BottomNavigationBarItem> _itemList;
  final int NOS;
  List<Widget> _widgetList=[];
  BottomNavBar(this._itemList,this._widgetList,this.NOS);
  @override
  _BottomNavBarState createState()=> _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> with SingleTickerProviderStateMixin{
  bool _showAppBar=true;
  ScrollController _scrollBottomBarController=ScrollController();
  bool isScrollingDown=false;
  bool _show=true;
  double bottomBarHeight=28;
  int _currentIndex=0;
  @override
  void initState(){
    super.initState();
    myScroll();
  }
  @override
  void dispose() { 
    _scrollBottomBarController.removeListener(() {});
    super.dispose();
  }
  void showBottomBar() {
    setState(() {
      _show = true;
    });
  }

  void hideBottomBar() {
    setState(() {
      _show = false;
    });
  }

  void myScroll() async {
  _scrollBottomBarController.addListener(() {
    if (_scrollBottomBarController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (!isScrollingDown) {
        isScrollingDown = true;
        _showAppBar = false;
        hideBottomBar();
      }
    }
    if (_scrollBottomBarController.position.userScrollDirection ==
        ScrollDirection.forward) {
      if (isScrollingDown) {
        isScrollingDown = false;
        _showAppBar = true;
        showBottomBar();
      }
    }
  });
  }
  @override
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(0),
        topLeft: Radius.circular(0),
      ),
      child: BottomNavigationBar(
      items: widget._itemList,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (index){
        setState(() {
          _currentIndex=index;
          debugPrint("On: $index");
          for(int i=0;i<widget.NOS;i++)
            if(i==index)
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>widget._widgetList[index]));
        }); },
      selectedItemColor: Colors.orange[500],
      selectedIconTheme: IconThemeData(
        color: Colors.orange[600],
        size: 28,
        opacity: 0.9,
      ),
      unselectedItemColor: Colors.blueGrey[700],
      unselectedIconTheme: IconThemeData(
        size: 20,
        opacity: 0.9,
      ),
      showUnselectedLabels: true,
      selectedLabelStyle: TextStyle(
        fontFamily: 'Work-Sans',
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.normal,
        fontFamily: 'Work-Sans',
      ),
      ),
    );
  }
}