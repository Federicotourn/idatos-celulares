// To parse this JSON data, do
//
//     final detail = detailFromJson(jsonString);

import 'dart:convert';

Detail detailFromJson(String str) => Detail.fromJson(json.decode(str));

String detailToJson(Detail data) => json.encode(data.toJson());

class Detail {
  PhoneDetails phoneDetails;
  GsmNetworkDetails gsmNetworkDetails;
  GsmLaunchDetails gsmLaunchDetails;
  GsmBodyDetails gsmBodyDetails;
  GsmDisplayDetails gsmDisplayDetails;
  GsmPlatformDetails gsmPlatformDetails;
  GsmMemoryDetails gsmMemoryDetails;
  GsmMainCameraDetails gsmMainCameraDetails;
  GsmSelfieCameraDetails gsmSelfieCameraDetails;
  GsmSoundDetails gsmSoundDetails;
  GsmCommunicationsDetails gsmCommunicationsDetails;
  GsmFeaturesDetails gsmFeaturesDetails;
  GsmBatteryDetails gsmBatteryDetails;
  GsmMiscDetails gsmMiscDetails;
  GsmTestsDetails gsmTestsDetails;

  Detail({
    required this.phoneDetails,
    required this.gsmNetworkDetails,
    required this.gsmLaunchDetails,
    required this.gsmBodyDetails,
    required this.gsmDisplayDetails,
    required this.gsmPlatformDetails,
    required this.gsmMemoryDetails,
    required this.gsmMainCameraDetails,
    required this.gsmSelfieCameraDetails,
    required this.gsmSoundDetails,
    required this.gsmCommunicationsDetails,
    required this.gsmFeaturesDetails,
    required this.gsmBatteryDetails,
    required this.gsmMiscDetails,
    required this.gsmTestsDetails,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        phoneDetails: PhoneDetails.fromJson(json["phoneDetails"]),
        gsmNetworkDetails: GsmNetworkDetails.fromJson(json["gsmNetworkDetails"]),
        gsmLaunchDetails: GsmLaunchDetails.fromJson(json["gsmLaunchDetails"]),
        gsmBodyDetails: GsmBodyDetails.fromJson(json["gsmBodyDetails"]),
        gsmDisplayDetails: GsmDisplayDetails.fromJson(json["gsmDisplayDetails"]),
        gsmPlatformDetails: GsmPlatformDetails.fromJson(json["gsmPlatformDetails"]),
        gsmMemoryDetails: GsmMemoryDetails.fromJson(json["gsmMemoryDetails"]),
        gsmMainCameraDetails: GsmMainCameraDetails.fromJson(json["gsmMainCameraDetails"]),
        gsmSelfieCameraDetails: GsmSelfieCameraDetails.fromJson(json["gsmSelfieCameraDetails"]),
        gsmSoundDetails: GsmSoundDetails.fromJson(json["gsmSoundDetails"]),
        gsmCommunicationsDetails: GsmCommunicationsDetails.fromJson(json["gsmCommunicationsDetails"]),
        gsmFeaturesDetails: GsmFeaturesDetails.fromJson(json["gsmFeaturesDetails"]),
        gsmBatteryDetails: GsmBatteryDetails.fromJson(json["gsmBatteryDetails"]),
        gsmMiscDetails: GsmMiscDetails.fromJson(json["gsmMiscDetails"]),
        gsmTestsDetails: GsmTestsDetails.fromJson(json["gsmTestsDetails"]),
      );

  Map<String, dynamic> toJson() => {
        "phoneDetails": phoneDetails.toJson(),
        "gsmNetworkDetails": gsmNetworkDetails.toJson(),
        "gsmLaunchDetails": gsmLaunchDetails.toJson(),
        "gsmBodyDetails": gsmBodyDetails.toJson(),
        "gsmDisplayDetails": gsmDisplayDetails.toJson(),
        "gsmPlatformDetails": gsmPlatformDetails.toJson(),
        "gsmMemoryDetails": gsmMemoryDetails.toJson(),
        "gsmMainCameraDetails": gsmMainCameraDetails.toJson(),
        "gsmSelfieCameraDetails": gsmSelfieCameraDetails.toJson(),
        "gsmSoundDetails": gsmSoundDetails.toJson(),
        "gsmCommunicationsDetails": gsmCommunicationsDetails.toJson(),
        "gsmFeaturesDetails": gsmFeaturesDetails.toJson(),
        "gsmBatteryDetails": gsmBatteryDetails.toJson(),
        "gsmMiscDetails": gsmMiscDetails.toJson(),
        "gsmTestsDetails": gsmTestsDetails.toJson(),
      };
}

class GsmBatteryDetails {
  String batteryCharging;
  String batteryType;

  GsmBatteryDetails({
    required this.batteryCharging,
    required this.batteryType,
  });

  factory GsmBatteryDetails.fromJson(Map<String, dynamic> json) => GsmBatteryDetails(
        batteryCharging: json["batteryCharging"],
        batteryType: json["batteryType"],
      );

  Map<String, dynamic> toJson() => {
        "batteryCharging": batteryCharging,
        "batteryType": batteryType,
      };
}

class GsmBodyDetails {
  String bodyDimensions;
  String bodyWeight;
  String bodySim;
  String bodyBuild;
  String bodyOther1;
  String bodyOther2;
  String bodyOther3;

  GsmBodyDetails({
    required this.bodyDimensions,
    required this.bodyWeight,
    required this.bodySim,
    required this.bodyBuild,
    required this.bodyOther1,
    required this.bodyOther2,
    required this.bodyOther3,
  });

  factory GsmBodyDetails.fromJson(Map<String, dynamic> json) => GsmBodyDetails(
        bodyDimensions: json["bodyDimensions"],
        bodyWeight: json["bodyWeight"],
        bodySim: json["bodySim"],
        bodyBuild: json["bodyBuild"],
        bodyOther1: json["bodyOther1"],
        bodyOther2: json["bodyOther2"],
        bodyOther3: json["bodyOther3"],
      );

  Map<String, dynamic> toJson() => {
        "bodyDimensions": bodyDimensions,
        "bodyWeight": bodyWeight,
        "bodySim": bodySim,
        "bodyBuild": bodyBuild,
        "bodyOther1": bodyOther1,
        "bodyOther2": bodyOther2,
        "bodyOther3": bodyOther3,
      };
}

class GsmCommunicationsDetails {
  String communicationsBluetooth;
  String communicationsNfc;
  String communicationsPositioning;
  String communicationsRadio;
  String communicationsUsb;
  String communicationsWlan;

  GsmCommunicationsDetails({
    required this.communicationsBluetooth,
    required this.communicationsNfc,
    required this.communicationsPositioning,
    required this.communicationsRadio,
    required this.communicationsUsb,
    required this.communicationsWlan,
  });

  factory GsmCommunicationsDetails.fromJson(Map<String, dynamic> json) => GsmCommunicationsDetails(
        communicationsBluetooth: json["communicationsBluetooth"],
        communicationsNfc: json["communicationsNfc"],
        communicationsPositioning: json["communicationsPositioning"],
        communicationsRadio: json["communicationsRadio"],
        communicationsUsb: json["communicationsUsb"],
        communicationsWlan: json["communicationsWlan"],
      );

  Map<String, dynamic> toJson() => {
        "communicationsBluetooth": communicationsBluetooth,
        "communicationsNfc": communicationsNfc,
        "communicationsPositioning": communicationsPositioning,
        "communicationsRadio": communicationsRadio,
        "communicationsUsb": communicationsUsb,
        "communicationsWlan": communicationsWlan,
      };
}

class GsmDisplayDetails {
  String displayType;
  String displaySize;
  String displayResolution;
  String displayProtection;
  String displayOther1;

  GsmDisplayDetails({
    required this.displayType,
    required this.displaySize,
    required this.displayResolution,
    required this.displayProtection,
    required this.displayOther1,
  });

  factory GsmDisplayDetails.fromJson(Map<String, dynamic> json) => GsmDisplayDetails(
        displayType: json["displayType"],
        displaySize: json["displaySize"],
        displayResolution: json["displayResolution"],
        displayProtection: json["displayProtection"],
        displayOther1: json["displayOther1"],
      );

  Map<String, dynamic> toJson() => {
        "displayType": displayType,
        "displaySize": displaySize,
        "displayResolution": displayResolution,
        "displayProtection": displayProtection,
        "displayOther1": displayOther1,
      };
}

class GsmFeaturesDetails {
  String featuresOther1;
  String featuresOther2;
  String featuresOther3;
  String featuresOther4;

  GsmFeaturesDetails({
    required this.featuresOther1,
    required this.featuresOther2,
    required this.featuresOther3,
    required this.featuresOther4,
  });

  factory GsmFeaturesDetails.fromJson(Map<String, dynamic> json) => GsmFeaturesDetails(
        featuresOther1: json["featuresOther1"],
        featuresOther2: json["featuresOther2"],
        featuresOther3: json["featuresOther3"],
        featuresOther4: json["featuresOther4"],
      );

  Map<String, dynamic> toJson() => {
        "featuresOther1": featuresOther1,
        "featuresOther2": featuresOther2,
        "featuresOther3": featuresOther3,
        "featuresOther4": featuresOther4,
      };
}

class GsmLaunchDetails {
  String launchAnnounced;
  String launchStatus;

  GsmLaunchDetails({
    required this.launchAnnounced,
    required this.launchStatus,
  });

  factory GsmLaunchDetails.fromJson(Map<String, dynamic> json) => GsmLaunchDetails(
        launchAnnounced: json["launchAnnounced"],
        launchStatus: json["launchStatus"],
      );

  Map<String, dynamic> toJson() => {
        "launchAnnounced": launchAnnounced,
        "launchStatus": launchStatus,
      };
}

class GsmMainCameraDetails {
  String mainCameraFeatures;
  String mainCameraQuad;
  String mainCameraVideo;

  GsmMainCameraDetails({
    required this.mainCameraFeatures,
    required this.mainCameraQuad,
    required this.mainCameraVideo,
  });

  factory GsmMainCameraDetails.fromJson(Map<String, dynamic> json) => GsmMainCameraDetails(
        mainCameraFeatures: json["mainCameraFeatures"],
        mainCameraQuad: json["mainCameraQuad"],
        mainCameraVideo: json["mainCameraVideo"],
      );

  Map<String, dynamic> toJson() => {
        "mainCameraFeatures": mainCameraFeatures,
        "mainCameraQuad": mainCameraQuad,
        "mainCameraVideo": mainCameraVideo,
      };
}

class GsmMemoryDetails {
  String memoryCardSlot;
  String memoryInternal;
  String memoryOther1;

  GsmMemoryDetails({
    required this.memoryCardSlot,
    required this.memoryInternal,
    required this.memoryOther1,
  });

  factory GsmMemoryDetails.fromJson(Map<String, dynamic> json) => GsmMemoryDetails(
        memoryCardSlot: json["memoryCardSlot"],
        memoryInternal: json["memoryInternal"],
        memoryOther1: json["memoryOther1"],
      );

  Map<String, dynamic> toJson() => {
        "memoryCardSlot": memoryCardSlot,
        "memoryInternal": memoryInternal,
        "memoryOther1": memoryOther1,
      };
}

class GsmMiscDetails {
  String miscColors;
  String miscModels;
  String miscPrice;
  String miscSar;
  String miscSarEu;

  GsmMiscDetails({
    required this.miscColors,
    required this.miscModels,
    required this.miscPrice,
    required this.miscSar,
    required this.miscSarEu,
  });

  factory GsmMiscDetails.fromJson(Map<String, dynamic> json) => GsmMiscDetails(
        miscColors: json["miscColors"],
        miscModels: json["miscModels"],
        miscPrice: json["miscPrice"],
        miscSar: json["miscSar"],
        miscSarEu: json["miscSarEu"],
      );

  Map<String, dynamic> toJson() => {
        "miscColors": miscColors,
        "miscModels": miscModels,
        "miscPrice": miscPrice,
        "miscSar": miscSar,
        "miscSarEu": miscSarEu,
      };
}

class GsmNetworkDetails {
  String networkTechnology;
  String network2GBands;
  String network3GBands;
  String network4GBands;
  String network5GBands;
  String networkSpeed;

  GsmNetworkDetails({
    required this.networkTechnology,
    required this.network2GBands,
    required this.network3GBands,
    required this.network4GBands,
    required this.network5GBands,
    required this.networkSpeed,
  });

  factory GsmNetworkDetails.fromJson(Map<String, dynamic> json) => GsmNetworkDetails(
        networkTechnology: json["networkTechnology"],
        network2GBands: json["network2GBands"],
        network3GBands: json["network3GBands"],
        network4GBands: json["network4GBands"],
        network5GBands: json["network5GBands"],
        networkSpeed: json["networkSpeed"],
      );

  Map<String, dynamic> toJson() => {
        "networkTechnology": networkTechnology,
        "network2GBands": network2GBands,
        "network3GBands": network3GBands,
        "network4GBands": network4GBands,
        "network5GBands": network5GBands,
        "networkSpeed": networkSpeed,
      };
}

class GsmPlatformDetails {
  String platformChipset;
  String platformCpu;
  String platformGpu;
  String platformOs;

  GsmPlatformDetails({
    required this.platformChipset,
    required this.platformCpu,
    required this.platformGpu,
    required this.platformOs,
  });

  factory GsmPlatformDetails.fromJson(Map<String, dynamic> json) => GsmPlatformDetails(
        platformChipset: json["platformChipset"],
        platformCpu: json["platformCpu"],
        platformGpu: json["platformGpu"],
        platformOs: json["platformOs"],
      );

  Map<String, dynamic> toJson() => {
        "platformChipset": platformChipset,
        "platformCpu": platformCpu,
        "platformGpu": platformGpu,
        "platformOs": platformOs,
      };
}

class GsmSelfieCameraDetails {
  String selfieCameraFeatures;
  String selfieCameraSingle;
  String selfieCameraVideo;

  GsmSelfieCameraDetails({
    required this.selfieCameraFeatures,
    required this.selfieCameraSingle,
    required this.selfieCameraVideo,
  });

  factory GsmSelfieCameraDetails.fromJson(Map<String, dynamic> json) => GsmSelfieCameraDetails(
        selfieCameraFeatures: json["selfieCameraFeatures"],
        selfieCameraSingle: json["selfieCameraSingle"],
        selfieCameraVideo: json["selfieCameraVideo"],
      );

  Map<String, dynamic> toJson() => {
        "selfieCameraFeatures": selfieCameraFeatures,
        "selfieCameraSingle": selfieCameraSingle,
        "selfieCameraVideo": selfieCameraVideo,
      };
}

class GsmSoundDetails {
  String sound35MmJack;
  String soundLoudspeaker;
  String soundOther1;
  String soundOther2;

  GsmSoundDetails({
    required this.sound35MmJack,
    required this.soundLoudspeaker,
    required this.soundOther1,
    required this.soundOther2,
  });

  factory GsmSoundDetails.fromJson(Map<String, dynamic> json) => GsmSoundDetails(
        sound35MmJack: json["sound35MmJack"],
        soundLoudspeaker: json["soundLoudspeaker"],
        soundOther1: json["soundOther1"],
        soundOther2: json["soundOther2"],
      );

  Map<String, dynamic> toJson() => {
        "sound35MmJack": sound35MmJack,
        "soundLoudspeaker": soundLoudspeaker,
        "soundOther1": soundOther1,
        "soundOther2": soundOther2,
      };
}

class GsmTestsDetails {
  String testsBatteryLife;
  String testsCamera;
  String testsDisplay;
  String testsLoudspeaker;
  String testsPerformance;

  GsmTestsDetails({
    required this.testsBatteryLife,
    required this.testsCamera,
    required this.testsDisplay,
    required this.testsLoudspeaker,
    required this.testsPerformance,
  });

  factory GsmTestsDetails.fromJson(Map<String, dynamic> json) => GsmTestsDetails(
        testsBatteryLife: json["testsBatteryLife"],
        testsCamera: json["testsCamera"],
        testsDisplay: json["testsDisplay"],
        testsLoudspeaker: json["testsLoudspeaker"],
        testsPerformance: json["testsPerformance"],
      );

  Map<String, dynamic> toJson() => {
        "testsBatteryLife": testsBatteryLife,
        "testsCamera": testsCamera,
        "testsDisplay": testsDisplay,
        "testsLoudspeaker": testsLoudspeaker,
        "testsPerformance": testsPerformance,
      };
}

class PhoneDetails {
  int customId;
  String yearValue;
  String brandValue;
  String modelValue;

  PhoneDetails({
    required this.customId,
    required this.yearValue,
    required this.brandValue,
    required this.modelValue,
  });

  factory PhoneDetails.fromJson(Map<String, dynamic> json) => PhoneDetails(
        customId: json["customId"],
        yearValue: json["yearValue"],
        brandValue: json["brandValue"],
        modelValue: json["modelValue"],
      );

  Map<String, dynamic> toJson() => {
        "customId": customId,
        "yearValue": yearValue,
        "brandValue": brandValue,
        "modelValue": modelValue,
      };
}
