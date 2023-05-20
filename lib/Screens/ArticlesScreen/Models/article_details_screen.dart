import 'dart:ui';

import 'package:apiero_medica/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ArticleDetailsScreen extends StatefulWidget {
  String? title, urlToImage, author, publishedAt, description, content, url;
  ArticleDetailsScreen(
      {super.key,
      this.title,
      this.urlToImage,
      this.author,
      this.publishedAt,
      this.description,
      this.content,
      this.url});

  @override
  State<ArticleDetailsScreen> createState() => _ArticleDetailsScreenState();
}

class _ArticleDetailsScreenState extends State<ArticleDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Bg,
      appBar: AppBar(
        backgroundColor: Constants().Bg,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: widget.url!));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Link Copied"),
                ),
              );
            },
            icon: const Icon(
              Icons.copy,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage(widget.urlToImage!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  widget.title!,
                  style: const TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.publishedAt!.substring(0, 10),
                      style: const TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: 16.0,
                      ),
                    ),
                    Chip(
                      backgroundColor: Constants().ContainerBg2,
                      label: Text(
                        widget.author!,
                        style: const TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.5,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  widget.description!,
                  style: const TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  widget.content!,
                  style: const TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                InkWell(
                  onTap: () async {
                    await launch(widget.url!);
                  },
                  child: Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Constants().ContainerBg2,
                    ),
                    child: const Center(
                      child: Text(
                        "Read More",
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
