import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ProgressExample extends StatefulWidget {
  const ProgressExample({super.key, required this.title});
  final String title;
  @override
  State<ProgressExample> createState() => _ProgressExampleState();
}

class _ProgressExampleState extends State<ProgressExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Buttons")),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // CircularProgressIndicator & LinearProgressIndicator
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularProgressIndicator(
                  valueColor:
                      new AlwaysStoppedAnimation<Color>(Colors.blue[100]!),
                  backgroundColor: Colors.blue[600],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LinearProgressIndicator(
                  valueColor:
                      new AlwaysStoppedAnimation<Color>(Colors.blue[100]!),
                  backgroundColor: Colors.blue[600],
                  value: 0.40,
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: WorkSpace(),
                ),
              ),
              Align(
                child: LayoutBuilder(
                  builder: (context, _) {
                    return IconButton(
                      icon: Icon(Icons.play_circle_filled),
                      iconSize: 50.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => ShowCase(),
                            fullscreenDialog: true,
                          ),
                        );
                      },
                    );
                  },
                ),
                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text("SpinKit", style: TextStyle(fontSize: 24.0)),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SpinKitRotatingCircle(color: Colors.orange),
                const SpinKitRotatingPlain(color: Colors.orange),
                const SpinKitChasingDots(color: Colors.orange),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SpinKitPumpingHeart(color: Colors.orange),
                const SpinKitPulse(color: Colors.orange),
                const SpinKitDoubleBounce(color: Colors.orange),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SpinKitWave(
                    color: Colors.orange, type: SpinKitWaveType.start),
                const SpinKitWave(
                    color: Colors.orange, type: SpinKitWaveType.center),
                const SpinKitWave(
                    color: Colors.orange, type: SpinKitWaveType.end),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SpinKitThreeBounce(color: Colors.orange),
                const SpinKitWanderingCubes(color: Colors.orange),
                const SpinKitWanderingCubes(
                    color: Colors.orange, shape: BoxShape.circle),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SpinKitCircle(color: Colors.orange),
                const SpinKitFadingFour(color: Colors.orange),
                const SpinKitFadingFour(
                    color: Colors.orange, shape: BoxShape.rectangle),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SpinKitFadingCube(color: Colors.orange),
                const SpinKitCubeGrid(size: 51.0, color: Colors.orange),
                const SpinKitFoldingCube(color: Colors.orange),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SpinKitRing(color: Colors.orange),
                const SpinKitDualRing(color: Colors.orange),
                const SpinKitRipple(color: Colors.orange),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SpinKitFadingGrid(color: Colors.orange),
                const SpinKitFadingGrid(
                    color: Colors.orange, shape: BoxShape.rectangle),
                const SpinKitSquareCircle(color: Colors.orange),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SpinKitSpinningCircle(color: Colors.orange),
                const SpinKitSpinningCircle(
                    color: Colors.orange, shape: BoxShape.rectangle),
                const SpinKitFadingCircle(color: Colors.orange),
              ],
            ),
            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SpinKitHourGlass(color: Colors.orange),
                const SpinKitPouringHourGlass(color: Colors.orange),
              ],
            ),
            const SizedBox(height: 64.0),
          ],
        ),
      ),
    );
  }
}

class WorkSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 80.0,
      height: 80.0,
      child: SpinKitFadingCircle(
        itemBuilder: (_, int index) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: index.isEven ? Colors.red : Colors.green,
            ),
          );
        },
        size: 60.0,
      ),
    );
  }
}
