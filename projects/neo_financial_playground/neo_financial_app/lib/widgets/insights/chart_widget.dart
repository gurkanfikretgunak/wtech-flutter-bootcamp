import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/color_constants.dart';
import 'package:neo_financial_app/core/data/constants/padding_constants.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';
import 'package:neo_financial_app/core/data/models/chart_data.dart';
import 'package:neo_financial_app/core/provider/insights_state.dart';
import 'package:neo_financial_app/widgets/insights/price_tag_paint_widget.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<ChartData> data;

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  late TooltipBehavior _tooltip;
  @override
  void initState() {
    _tooltip = TooltipBehavior(
        enable: true,
        opacity: 0,
        tooltipPosition: TooltipPosition.pointer,
        shouldAlwaysShow: true,
        builder: (dynamic data, dynamic point, dynamic series, int pointIndex,
            int seriesIndex) {
          return SizedBox(
            height: 40,
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomPaint(
                    painter: PriceTagPaint(),
                    child: Padding(
                      padding: PaddingConstants.mediumPadding,
                      child: Text(
                        'CA\$${point.y} avg.',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: PaddingConstants.mediumBottomPadding,
                    child: Text(
                        ". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . "),
                  )
                ],
              ),
            ),
          );
        });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: PaddingConstants.largeVerticalPadding,
      child: SfCartesianChart(
          margin: EdgeInsets.zero,
          plotAreaBorderWidth: 0,
          primaryXAxis: CategoryAxis(
            majorTickLines: const MajorTickLines(
              width: 0,
            ),
            axisLine: const AxisLine(
              width: 0,
            ),
            maximum: 6,
            isVisible: true,
            axisLabelFormatter: (AxisLabelRenderDetails args) {
              late String text;
              if (TextConstants.controlChartItemsText.contains(args.text)) {
                text = '';
              } else {
                text = args.text;
              }
              return ChartAxisLabel(text, args.textStyle);
            },
            majorGridLines: const MajorGridLines(width: 0),
          ),
          primaryYAxis: NumericAxis(isVisible: false, minimum: 0, interval: 10),
          tooltipBehavior: _tooltip,
          series: <ChartSeries<ChartData, String>>[
            ColumnSeries<ChartData, String>(
              onPointDoubleTap: (pointInteractionDetails) {
                Provider.of<InsightsState>(context, listen: false)
                    .changeMonthInformations(
                        context, pointInteractionDetails.pointIndex);
              },
              width: 0.7,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              dataSource: widget.data,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              pointColorMapper: (ChartData data, _) =>
                  ColorConstants.chartColors[data.colorIndex],
            ),
          ]),
    );
  }
}
