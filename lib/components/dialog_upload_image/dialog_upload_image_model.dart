import '/flutter_flow/flutter_flow_util.dart';
import 'dialog_upload_image_widget.dart' show DialogUploadImageWidget;
import 'package:flutter/material.dart';

class DialogUploadImageModel extends FlutterFlowModel<DialogUploadImageWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
