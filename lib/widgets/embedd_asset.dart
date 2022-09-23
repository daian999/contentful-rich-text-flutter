import 'package:contentful_rich_text/types/types.dart';
import 'package:flutter/material.dart';

class EmbeddAsset extends StatelessWidget {
  final dynamic node;
  final Next next;

  EmbeddAsset(this.node, this.next);

  @override
  Widget build(BuildContext context) {
    final String fileType = node['data']['target']['fields']['file']['contentType'];
    final bool isImage = fileType.contains("image/");
    if (isImage){
      return Image.network(
        "https:"+node['data']['target']['fields']['file']['url'],
        fit: BoxFit.cover,
      );
    }else{
      return SizedBox();
    }

  }
}
