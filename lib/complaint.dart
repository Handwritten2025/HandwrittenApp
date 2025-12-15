import 'package:flutter/material.dart';

class ComplaintPage extends StatefulWidget {
  const ComplaintPage({super.key});

  @override
  State<ComplaintPage> createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  final TextEditingController _complaintController = TextEditingController();

  // Dummy complaint data
  List<Map<String, String>> complaints = [
    {
      "complaint": "App doesn't work",
      "reply": "Sorry for the inconvenience"
    },
    {
      "complaint": "Bad animation",
      "reply": "We will improve it soon"
    }
  ];

  void submitComplaint() {
    if (_complaintController.text.trim().isEmpty) return;

    setState(() {
      complaints.insert(0, {
        "complaint": _complaintController.text,
        "reply": "Your complaint has been received"
      });
      _complaintController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text("Complaints"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 4,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            /// INPUT CARD
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextField(
                      controller: _complaintController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: "Enter your complaint",
                        prefixIcon: const Icon(Icons.feedback),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.send),
                        label: const Text("Submit Complaint"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          foregroundColor: const Color.fromARGB(255, 9, 9, 7), // 👈 TEXT COLOR CHANGED
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: submitComplaint,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// COMPLAINT LIST TITLE
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Previous Complaints",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
            ),

            const SizedBox(height: 10),

            /// COMPLAINT LIST
            Expanded(
              child: ListView.builder(
                itemCount: complaints.length,
                itemBuilder: (context, index) {
                  final item = complaints[index];

                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          /// COMPLAINT HEADER
                          Row(
                            children: const [
                              Icon(Icons.report_problem, color: Colors.red),
                              SizedBox(width: 6),
                              Text(
                                "Complaint",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 6),
                          Text(item["complaint"]!),

                          const Divider(height: 20),

                          /// REPLY HEADER
                          Row(
                            children: const [
                              Icon(Icons.reply, color: Colors.green),
                              SizedBox(width: 6),
                              Text(
                                "Reply",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 6),
                          Text(
                            item["reply"]!,
                            style: const TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}