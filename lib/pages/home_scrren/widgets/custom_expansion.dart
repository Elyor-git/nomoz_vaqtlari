import 'package:flutter/material.dart';
import 'package:nomoz_vaqtlari/style/app_colors.dart';
import '../../../model/nomoz_model.dart';
import '../../../utils/list_extention.dart';

class CustomExpansion extends StatefulWidget {
  final NomozModel? nomozModelDush;
  final NomozModel? nomozModelSesh;
  final NomozModel? nomozModelChor;
  final NomozModel? nomozModelPay;
  final NomozModel? nomozModelJum;
  final NomozModel? nomozModelShan;
  final NomozModel? nomozModelYak;

  const CustomExpansion({
    Key? key,
    required this.nomozModelDush,
    required this.nomozModelChor,
    required this.nomozModelSesh,
    required this.nomozModelPay,
    required this.nomozModelJum,
    required this.nomozModelShan,
    required this.nomozModelYak,
  }) : super(key: key);

  @override
  State<CustomExpansion> createState() => _CustomExpansionState();
}

class _CustomExpansionState extends State<CustomExpansion> {
  ExpansionTileController controller1 = ExpansionTileController();
  ExpansionTileController controller2 = ExpansionTileController();
  ExpansionTileController controller3 = ExpansionTileController();
  ExpansionTileController controller4 = ExpansionTileController();
  ExpansionTileController controller5 = ExpansionTileController();
  ExpansionTileController controller6 = ExpansionTileController();
  ExpansionTileController controller7 = ExpansionTileController();

  bool is1TileExpanded = false;
  bool is2TileExpanded = false;
  bool is3TileExpanded = false;
  bool is4TileExpanded = false;
  bool is5TileExpanded = false;
  bool is6TileExpanded = false;
  bool is7TileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            child: Column(
              children: [
                ExpansionTile(
                  collapsedBackgroundColor: AppColors.expansionTile30,
                  collapsedShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  backgroundColor: AppColors.expansionTile40,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  controller: controller1,
                  onExpansionChanged: (pressed) {
                    setState(() {
                      is1TileExpanded = pressed;
                      if (is1TileExpanded) {
                        is2TileExpanded = false;
                        is3TileExpanded = false;
                        is4TileExpanded = false;
                        is5TileExpanded = false;
                        is6TileExpanded = false;
                        is7TileExpanded = false;
                        controller2.collapse();
                        controller3.collapse();
                        controller4.collapse();
                        controller5.collapse();
                        controller6.collapse();
                        controller7.collapse();
                      }
                    });
                  },
                  trailing: const SizedBox.shrink(),
                  title: Text(widget.nomozModelDush?.weekday ?? ""),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, left: 40, right: 40,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bomdod"),
                              Text("Peshin"),
                              Text("Asr"),
                              Text("Shom"),
                              Text("Xufton"),

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.nomozModelDush?.times?.tong_saharlik ?? ""),
                              Text(widget.nomozModelDush?.times?.peshin ?? ""),
                              Text(widget.nomozModelDush?.times?.asr ?? ""),
                              Text(widget.nomozModelDush?.times?.shom_iftor ?? ""),
                              Text(widget.nomozModelDush?.times?.hufton ?? ""),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  collapsedBackgroundColor: AppColors.expansionTile30,
                  collapsedShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  backgroundColor: AppColors.expansionTile40,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  controller: controller2,
                  onExpansionChanged: (pressed) {
                    setState(() {
                      is2TileExpanded = pressed;
                      if (is2TileExpanded) {
                        is1TileExpanded = false;
                        is3TileExpanded = false;
                        is4TileExpanded = false;
                        is5TileExpanded = false;
                        is6TileExpanded = false;
                        is7TileExpanded = false;
                        controller1.collapse();
                        controller3.collapse();
                        controller4.collapse();
                        controller5.collapse();
                        controller6.collapse();
                        controller7.collapse();
                      }
                    });
                  },
                  trailing: const SizedBox.shrink(),
                  title: Text(widget.nomozModelSesh?.weekday ?? ""),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8, right: 40, left: 40,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bomdod"),
                              Text("Peshin"),
                              Text("Asr"),
                              Text("Shom"),
                              Text("Xufton"),

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.nomozModelSesh?.times?.tong_saharlik ?? ""),
                              Text(widget.nomozModelSesh?.times?.peshin ?? ""),
                              Text(widget.nomozModelSesh?.times?.asr ?? ""),
                              Text(widget.nomozModelSesh?.times?.shom_iftor ?? ""),
                              Text(widget.nomozModelSesh?.times?.hufton ?? ""),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  controller: controller3,
                  collapsedBackgroundColor: AppColors.expansionTile30,
                  collapsedShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  backgroundColor: AppColors.expansionTile40,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  onExpansionChanged: (pressed) {
                    setState(() {
                      is3TileExpanded = pressed;
                      if (is3TileExpanded) {
                        is2TileExpanded = false;
                        is1TileExpanded = false;
                        is4TileExpanded = false;
                        is5TileExpanded = false;
                        is6TileExpanded = false;
                        is7TileExpanded = false;
                        controller2.collapse();
                        controller1.collapse();
                        controller4.collapse();
                        controller5.collapse();
                        controller6.collapse();
                        controller7.collapse();
                        // Close the first tile
                      }
                    });
                  },
                  trailing: const SizedBox.shrink(),
                  title:  Text(widget.nomozModelChor?.weekday ?? ""),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8, left: 40, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bomdod"),
                              Text("Peshin"),
                              Text("Asr"),
                              Text("Shom"),
                              Text("Xufton"),

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.nomozModelChor?.times?.tong_saharlik ?? ""),
                              Text(widget.nomozModelChor?.times?.peshin ?? ""),
                              Text(widget.nomozModelChor?.times?.asr ?? ""),
                              Text(widget.nomozModelChor?.times?.shom_iftor ?? ""),
                              Text(widget.nomozModelChor?.times?.hufton ?? ""),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  controller: controller4,
                  collapsedBackgroundColor: AppColors.expansionTile30,
                  collapsedShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  backgroundColor: AppColors.expansionTile40,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  onExpansionChanged: (pressed) {
                    setState(() {
                      is4TileExpanded = pressed;
                      if (is4TileExpanded) {
                        is2TileExpanded = false;
                        is3TileExpanded = false;
                        is1TileExpanded = false;
                        is5TileExpanded = false;
                        is6TileExpanded = false;
                        is7TileExpanded = false;
                        controller2.collapse();
                        controller3.collapse();
                        controller1.collapse();
                        controller5.collapse();
                        controller6.collapse();
                        controller7.collapse();
                        // Close the first tile
                      }
                    });
                  },
                  trailing: const SizedBox.shrink(),
                  title:  Text(widget.nomozModelPay?.weekday ?? ""),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8, left: 40, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bomdod"),
                              Text("Peshin"),
                              Text("Asr"),
                              Text("Shom"),
                              Text("Xufton"),

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.nomozModelPay?.times?.tong_saharlik ?? ""),
                              Text(widget.nomozModelPay?.times?.peshin ?? ""),
                              Text(widget.nomozModelPay?.times?.asr ?? ""),
                              Text(widget.nomozModelPay?.times?.shom_iftor ?? ""),
                              Text(widget.nomozModelPay?.times?.hufton ?? ""),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  controller: controller5,
                  collapsedBackgroundColor: AppColors.expansionTile30,
                  collapsedShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  backgroundColor: AppColors.expansionTile40,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  onExpansionChanged: (pressed) {
                    setState(() {
                      is5TileExpanded = pressed;
                      if (is5TileExpanded) {
                        is2TileExpanded = false;
                        is3TileExpanded = false;
                        is4TileExpanded = false;
                        is1TileExpanded = false;
                        is6TileExpanded = false;
                        is7TileExpanded = false;
                        controller2.collapse();
                        controller3.collapse();
                        controller4.collapse();
                        controller1.collapse();
                        controller6.collapse();
                        controller7.collapse();
                      }
                    });
                  },
                  trailing: const SizedBox.shrink(),
                  title:  Text(widget.nomozModelJum?.weekday ?? ""),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8, left: 40, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bomdod"),
                              Text("Peshin"),
                              Text("Asr"),
                              Text("Shom"),
                              Text("Xufton"),

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.nomozModelJum?.times?.tong_saharlik ?? ""),
                              Text(widget.nomozModelJum?.times?.peshin ?? ""),
                              Text(widget.nomozModelJum?.times?.asr ?? ""),
                              Text(widget.nomozModelJum?.times?.shom_iftor ?? ""),
                              Text(widget.nomozModelJum?.times?.hufton ?? ""),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  controller: controller6,
                  collapsedBackgroundColor: AppColors.expansionTile30,
                  collapsedShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  backgroundColor: AppColors.expansionTile40,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  onExpansionChanged: (pressed) {
                    setState(() {
                      is6TileExpanded = pressed;
                      if (is6TileExpanded) {
                        is2TileExpanded = false;
                        is3TileExpanded = false;
                        is4TileExpanded = false;
                        is5TileExpanded = false;
                        is1TileExpanded = false;
                        is7TileExpanded = false;
                        controller2.collapse();
                        controller3.collapse();
                        controller4.collapse();
                        controller5.collapse();
                        controller1.collapse();
                        controller7.collapse();
                      }
                    });
                  },
                  trailing: const SizedBox.shrink(),
                  title:  Text(widget.nomozModelShan?.weekday ?? ""),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8, left: 40, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bomdod"),
                              Text("Peshin"),
                              Text("Asr"),
                              Text("Shom"),
                              Text("Xufton"),

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.nomozModelShan?.times?.tong_saharlik ?? ""),
                              Text(widget.nomozModelShan?.times?.peshin ?? ""),
                              Text(widget.nomozModelShan?.times?.asr ?? ""),
                              Text(widget.nomozModelShan?.times?.shom_iftor ?? ""),
                              Text(widget.nomozModelShan?.times?.hufton ?? ""),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  controller: controller7,
                  collapsedBackgroundColor: AppColors.expansionTile30,
                  collapsedShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  backgroundColor: AppColors.expansionTile40,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  onExpansionChanged: (pressed) {
                    setState(() {
                      is7TileExpanded = pressed;
                      if (is7TileExpanded) {
                        is2TileExpanded = false;
                        is3TileExpanded = false;
                        is4TileExpanded = false;
                        is5TileExpanded = false;
                        is6TileExpanded = false;
                        is1TileExpanded = false;
                        controller2.collapse();
                        controller3.collapse();
                        controller4.collapse();
                        controller5.collapse();
                        controller6.collapse();
                        controller1.collapse();
                      }
                    });
                  },
                  trailing: const SizedBox.shrink(),
                  title:  Text(widget.nomozModelYak?.weekday ?? ""),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8, left: 40, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bomdod"),
                              Text("Peshin"),
                              Text("Asr"),
                              Text("Shom"),
                              Text("Xufton"),

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.nomozModelYak?.times?.tong_saharlik ?? ""),
                              Text(widget.nomozModelYak?.times?.peshin ?? ""),
                              Text(widget.nomozModelYak?.times?.asr ?? ""),
                              Text(widget.nomozModelYak?.times?.shom_iftor ?? ""),
                              Text(widget.nomozModelYak?.times?.hufton ?? ""),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ].addBetween(
                const SizedBox(
                  height: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
