
import 'dart:convert';

List<Covid> covidFromJson(String str) => List<Covid>.from(json.decode(str).map((x) => Covid.fromJson(x)));

String covidToJson(List<Covid> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Covid {
    Covid({
        this.txnDate,
        this.newCase,
        this.totalCase,
        this.newCaseExcludeabroad,
        this.totalCaseExcludeabroad,
        this.newDeath,
        this.totalDeath,
        this.newRecovered,
        this.totalRecovered,
        this.updateDate,
    });

    DateTime? txnDate;
    int? newCase;
    int? totalCase;
    int? newCaseExcludeabroad;
    int? totalCaseExcludeabroad;
    int? newDeath;
    int? totalDeath;
    int? newRecovered;
    int? totalRecovered;
    DateTime? updateDate;

    factory Covid.fromJson(Map<String, dynamic> json) => Covid(
        txnDate: DateTime.parse(json["txn_date"]),
        newCase: json["new_case"],
        totalCase: json["total_case"],
        newCaseExcludeabroad: json["new_case_excludeabroad"],
        totalCaseExcludeabroad: json["total_case_excludeabroad"],
        newDeath: json["new_death"],
        totalDeath: json["total_death"],
        newRecovered: json["new_recovered"],
        totalRecovered: json["total_recovered"],
        updateDate: DateTime.parse(json["update_date"]),
    );

    Map<String, dynamic> toJson() => {
        "txn_date": "${txnDate!.year.toString().padLeft(4, '0')}-${txnDate!.month.toString().padLeft(2, '0')}-${txnDate!.day.toString().padLeft(2, '0')}",
        "new_case": newCase,
        "total_case": totalCase,
        "new_case_excludeabroad": newCaseExcludeabroad,
        "total_case_excludeabroad": totalCaseExcludeabroad,
        "new_death": newDeath,
        "total_death": totalDeath,
        "new_recovered": newRecovered,
        "total_recovered": totalRecovered,
        "update_date": updateDate!.toIso8601String(),
    };
}
