import 'package:flutter/material.dart';
import 'package:neo_financial_app/widgets/price_tag_paint_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../core/data/models/chart_data.dart';

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
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'CA\$${point.y} avg.',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
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
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 200,
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
            majorGridLines: const MajorGridLines(width: 0),
          ),
          primaryYAxis: NumericAxis(
              isVisible: false, minimum: 0, maximum: 30, interval: 10),
          tooltipBehavior: _tooltip,
          series: <ChartSeries<ChartData, String>>[
            ColumnSeries<ChartData, String>(
              width: 0.7,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              dataSource: widget.data,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              pointColorMapper: (ChartData data, _) => data.color,
            ),
          ]),
    );
  }
}
