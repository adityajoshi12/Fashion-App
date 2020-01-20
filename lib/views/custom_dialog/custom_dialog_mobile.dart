part of custom_dialog_view;

class _CustomDialogMobile extends StatelessWidget {
  final CustomDialogViewModel viewModel;
  final DialogRequest dialogRequest;
  final primaryColor = const Color(0xFF75A2EA);
  final grayColor = const Color(0xFF939393);
  static const double padding = 20.0;
  _CustomDialogMobile(this.viewModel,this.dialogRequest);

  @override
  Widget build(BuildContext context) {
     return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(padding),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(padding),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10.0,
                    offset: const Offset(0.0, 10.0),
                  ),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 24.0),
                Text(
                  dialogRequest.title,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 24.0),
                Text(
                  dialogRequest.description,
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: grayColor,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 24.0),
                RaisedButton(
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      dialogRequest.primaryButtonText,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {
                   
                        viewModel.primaryButtonClicked(dialogRequest.primaryButtonRoute);
                  },
                ),
                SizedBox(height: 10.0),
                showSecondaryButton(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  showSecondaryButton(BuildContext context) {
    if (dialogRequest.secondaryButtonRoute != null &&
        dialogRequest.secondaryButtonText != null) {
      return FlatButton(
        child: Text(
          dialogRequest.secondaryButtonText,
          maxLines: 1,
          style: TextStyle(
            fontSize: 18,
            color: primaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        onPressed: () {
          viewModel.secondaryButtonClicked();
        },
      );
    } else {
      return SizedBox(height: 10.0);
    }
  }
}
