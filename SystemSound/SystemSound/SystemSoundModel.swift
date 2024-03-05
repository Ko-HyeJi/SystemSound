//
//  SystemSoundModel.swift
//  SystemSound
//
//  Created by 고혜지 on 3/5/24.
//

import Foundation

struct SystemSound {
  let id: Int
  let fileName: String
  let category: SystemSoundSubCategory?
}

enum SystemSoundSubCategory: String, Identifiable {
  case audioToneBusy = "AudioToneBusy"
  case audioToneCallWaiting = "AudioToneCallWaiting"
  case audioToneCongestion = "AudioToneCongestion"
  case audioToneError = "AudioToneError"
  case audioToneKey2 = "AudioToneKey2"
  case audioTonePathAcknowledge = "AudioTonePathAcknowledge"
  case beginRecording = "BeginRecording"
  case beginVideoRecording = "BeginVideoRecording"
  case calendarAlert = "CalendarAlert"
  case cameraShutter = "CameraShutter"
  case connectedToPower = "ConnectedToPower"
  case endRecording = "EndRecording"
  case endVideoRecording = "EndVideoRecording"
  case failedUnlock = "FailedUnlock"
  case headsetAnswerCall = "Headset_AnswerCall"
  case headsetCallWaitingActions = "Headset_CallWaitingActions"
  case headsetEndCall = "Headset_EndCall"
  case headsetRedial = "Headset_Redial"
  case headsetStartCall = "Headset_StartCall"
  case headsetTransitionEnd = "Headset_TransitionEnd"
  case jblAmbiguous = "JBL_Ambiguous"
  case jblBegin = "JBL_Begin"
  case jblCancel = "JBL_Cancel"
  case jblConfirm = "JBL_Confirm"
  case jblNoMatch = "JBL_NoMatch"
  case keyPressClickPreview = "KeyPressClickPreview"
  case keyPressed = "KeyPressed"
  case lowPower = "LowPower"
  case mailReceived = "MailReceived"
  case mailSent = "MailSent"
  case pinKeyPressed = "PINKeyPressed"
  case ringerSwitchIndication = "RingerSwitchIndication"
  case ringerVibeChanged = "RingerVibeChanged"
  case simToolkitTone = "SIMToolkitTone"
  case smsReceived = "SMSReceived"
  case smsReceivedAlert = "SMSReceived_Alert"
  case smsReceivedSelection = "SMSReceived_Selection"
  case smsReceivedVibrate = "SMSReceived_Vibrate"
  case smsSent = "SMSSent"
  case screenLocked = "ScreenLocked"
  case screenUnlocked = "ScreenUnlocked"
  case shakeToShuffle = "ShakeToShuffle"
  case silentVibeChanged = "SilentVibeChanged"
  case systemSoundPreview = "SystemSoundPreview"
  case touchTone = "TouchTone"
  case ussdAlert = "USSDAlert"
  case vcCallUpgrade = "VCCallUpgrade"
  case vcCallWaiting = "VCCallWaiting"
  case vcEnded = "VCEnded"
  case vcInvitationAccepted = "VCInvitationAccepted"
  case vcRinging = "VCRinging"
  case vibrate = "Vibrate"
  case voicemailReceived = "VoicemailReceived"
  
  var id: Self { self }
}

enum SystemSoundCategory: String, CaseIterable, Identifiable {
  case audioTone = "Audio Tone"
  case camera = "Camera"
  case power = "Power"
  case headset = "Headset"
  case jbl = "JBL"
  case keyPress = "Key Press"
  case mail = "Mail"
  case sms = "SMS"
  case screenLock = "Screen Lock"
  case vc = "Video Conference"
  case other = "Other"
  
  var id: Self { self }
  
  var subCategories: [SystemSoundSubCategory] {
    switch self {
    case .audioTone:
      return [.audioToneBusy,
              .audioToneCallWaiting,
              .audioToneCongestion,
              .audioToneError,
              .audioToneKey2,
              .audioTonePathAcknowledge]
    case .camera:
      return [.beginRecording,
              .beginVideoRecording,
              .cameraShutter,
              .endRecording,
              .endVideoRecording]
    case .power:
      return [.connectedToPower,
              .lowPower]
    case .headset:
      return [.headsetAnswerCall,
              .headsetCallWaitingActions,
              .headsetEndCall,
              .headsetRedial,
              .headsetStartCall,
              .headsetTransitionEnd]
      
    case .jbl:
      return [.jblAmbiguous,
              .jblBegin,
              .jblCancel,
              .jblConfirm,
              .jblNoMatch]
      
    case .keyPress:
      return [.keyPressClickPreview,
              .keyPressed,
              .pinKeyPressed]
      
    case .mail:
      return [.mailReceived,
              .mailSent,
              .voicemailReceived]
      
    case .sms:
      return [.smsReceived,
              .smsReceivedAlert,
              .smsReceivedSelection,
              .smsReceivedVibrate,
              .smsSent]
      
    case .screenLock:
      return [.screenLocked,
              .screenUnlocked,
              .failedUnlock]
      
    case .vc:
      return [.vcCallUpgrade,
              .vcCallWaiting,
              .vcEnded,
              .vcInvitationAccepted,
              .vcRinging]
      
    case .other:
      return [.calendarAlert,
              .ringerSwitchIndication,
              .ringerVibeChanged,
              .simToolkitTone,
              .shakeToShuffle,
              .silentVibeChanged,
              .systemSoundPreview,
              .touchTone,
              .ussdAlert,
              .vibrate]
      
    }
  }
}

let systemSounds: [SystemSound] = [
  SystemSound(id: 1000, fileName: "new-mail.caf", category: .mailReceived),
  SystemSound(id: 1001, fileName: "mail-sent.caf", category: .mailSent),
  SystemSound(id: 1002, fileName: "Voicemail.caf", category: .voicemailReceived),
  SystemSound(id: 1003, fileName: "ReceivedMessage.caf", category: .smsReceived),
  SystemSound(id: 1004, fileName: "SentMessage.caf", category: .smsSent),
  SystemSound(id: 1005, fileName: "alarm.caf", category: .calendarAlert),
  SystemSound(id: 1006, fileName: "low_power.caf", category: .lowPower),
  SystemSound(id: 1007, fileName: "sms-received1.caf", category: .smsReceivedAlert),
  SystemSound(id: 1008, fileName: "sms-received2.caf", category: .smsReceivedAlert),
  SystemSound(id: 1009, fileName: "sms-received3.caf", category: .smsReceivedAlert),
  SystemSound(id: 1010, fileName: "sms-received4.caf", category: .smsReceivedAlert),
  SystemSound(id: 1011, fileName: "-", category: .smsReceivedVibrate),
  SystemSound(id: 1012, fileName: "sms-received1.caf", category: .smsReceivedAlert),
  SystemSound(id: 1013, fileName: "sms-received5.caf", category: .smsReceivedAlert),
  SystemSound(id: 1014, fileName: "sms-received6.caf", category: .smsReceivedAlert),
  SystemSound(id: 1015, fileName: "Voicemail.caf", category: nil),
  SystemSound(id: 1016, fileName: "tweet_sent.caf", category: .smsSent),
  SystemSound(id: 1020, fileName: "Anticipate.caf", category: .smsReceivedAlert),
  SystemSound(id: 1021, fileName: "Bloom.caf", category: .smsReceivedAlert),
  SystemSound(id: 1022, fileName: "Calypso.caf", category: .smsReceivedAlert),
  SystemSound(id: 1023, fileName: "Choo_Choo.caf", category: .smsReceivedAlert),
  SystemSound(id: 1024, fileName: "Descent.caf", category: .smsReceivedAlert),
  SystemSound(id: 1025, fileName: "Fanfare.caf", category: .smsReceivedAlert),
  SystemSound(id: 1026, fileName: "Ladder.caf", category: .smsReceivedAlert),
  SystemSound(id: 1027, fileName: "Minuet.caf", category: .smsReceivedAlert),
  SystemSound(id: 1028, fileName: "News_Flash.caf", category: .smsReceivedAlert),
  SystemSound(id: 1029, fileName: "Noir.caf", category: .smsReceivedAlert),
  SystemSound(id: 1030, fileName: "Sherwood_Forest.caf", category: .smsReceivedAlert),
  SystemSound(id: 1031, fileName: "Spell.caf", category: .smsReceivedAlert),
  SystemSound(id: 1032, fileName: "Suspense.caf", category: .smsReceivedAlert),
  SystemSound(id: 1033, fileName: "Telegraph.caf", category: .smsReceivedAlert),
  SystemSound(id: 1034, fileName: "Tiptoes.caf", category: .smsReceivedAlert),
  SystemSound(id: 1035, fileName: "Typewriters.caf", category: .smsReceivedAlert),
  SystemSound(id: 1036, fileName: "Update.caf", category: .smsReceivedAlert),
  SystemSound(id: 1050, fileName: "ussd.caf", category: .ussdAlert),
  SystemSound(id: 1051, fileName: "SIMToolkitCallDropped.caf", category: .simToolkitTone),
  SystemSound(id: 1052, fileName: "SIMToolkitGeneralBeep.caf", category: .simToolkitTone),
  SystemSound(id: 1053, fileName: "SIMToolkitNegativeACK.caf", category: .simToolkitTone),
  SystemSound(id: 1054, fileName: "SIMToolkitPositiveACK.caf", category: .simToolkitTone),
  SystemSound(id: 1055, fileName: "SIMToolkitSMS.caf", category: .simToolkitTone),
  SystemSound(id: 1057, fileName: "Tink.caf", category: .pinKeyPressed),
  SystemSound(id: 1070, fileName: "ct-busy.caf", category: .audioToneBusy),
  SystemSound(id: 1071, fileName: "ct-congestion.caf", category: .audioToneCongestion),
  SystemSound(id: 1072, fileName: "ct-path-ack.caf", category: .audioTonePathAcknowledge),
  SystemSound(id: 1073, fileName: "ct-error.caf", category: .audioToneError),
  SystemSound(id: 1074, fileName: "ct-call-waiting.caf", category: .audioToneCallWaiting),
  SystemSound(id: 1075, fileName: "ct-keytone2.caf", category: .audioToneKey2),
  SystemSound(id: 1100, fileName: "lock.caf", category: .screenLocked),
  SystemSound(id: 1101, fileName: "unlock.caf", category: .screenUnlocked),
  SystemSound(id: 1102, fileName: "-", category: .failedUnlock),
  SystemSound(id: 1103, fileName: "Tink.caf", category: .keyPressed),
  SystemSound(id: 1104, fileName: "Tock.caf", category: .keyPressed),
  SystemSound(id: 1105, fileName: "Tock.caf", category: .keyPressed),
  SystemSound(id: 1106, fileName: "beep-beep.caf", category: .connectedToPower),
  SystemSound(id: 1107, fileName: "RingerChanged.caf", category: .ringerSwitchIndication),
  SystemSound(id: 1108, fileName: "photoShutter.caf", category: .cameraShutter),
  SystemSound(id: 1109, fileName: "shake.caf", category: .shakeToShuffle),
  SystemSound(id: 1110, fileName: "jbl_begin.caf", category: .jblBegin),
  SystemSound(id: 1111, fileName: "jbl_confirm.caf", category: .jblConfirm),
  SystemSound(id: 1112, fileName: "jbl_cancel.caf", category: .jblCancel),
  SystemSound(id: 1113, fileName: "begin_record.caf", category: .beginRecording),
  SystemSound(id: 1114, fileName: "end_record.caf", category: .endRecording),
  SystemSound(id: 1115, fileName: "jbl_ambiguous.caf", category: .jblAmbiguous),
  SystemSound(id: 1116, fileName: "jbl_no_match.caf", category: .jblNoMatch),
  SystemSound(id: 1117, fileName: "begin_video_record.caf", category: .beginVideoRecording),
  SystemSound(id: 1118, fileName: "end_video_record.caf", category: .endVideoRecording),
  SystemSound(id: 1150, fileName: "vc~invitation-accepted.caf", category: .vcInvitationAccepted),
  SystemSound(id: 1151, fileName: "vc~ringing.caf", category: .vcRinging),
  SystemSound(id: 1152, fileName: "vc~ended.caf", category: .vcEnded),
  SystemSound(id: 1153, fileName: "ct-call-waiting.caf", category: .vcCallWaiting),
  SystemSound(id: 1154, fileName: "vc~ringing.caf", category: .vcCallUpgrade),
  SystemSound(id: 1200, fileName: "dtmf-0.caf", category: .touchTone),
  SystemSound(id: 1201, fileName: "dtmf-1.caf", category: .touchTone),
  SystemSound(id: 1202, fileName: "dtmf-2.caf", category: .touchTone),
  SystemSound(id: 1203, fileName: "dtmf-3.caf", category: .touchTone),
  SystemSound(id: 1204, fileName: "dtmf-4.caf", category: .touchTone),
  SystemSound(id: 1205, fileName: "dtmf-5.caf", category: .touchTone),
  SystemSound(id: 1206, fileName: "dtmf-6.caf", category: .touchTone),
  SystemSound(id: 1207, fileName: "dtmf-7.caf", category: .touchTone),
  SystemSound(id: 1208, fileName: "dtmf-8.caf", category: .touchTone),
  SystemSound(id: 1209, fileName: "dtmf-9.caf", category: .touchTone),
  SystemSound(id: 1210, fileName: "dtmf-star.caf", category: .touchTone),
  SystemSound(id: 1211, fileName: "dtmf-pound.caf", category: .touchTone),
  SystemSound(id: 1254, fileName: "long_low_short_high.caf", category: .headsetStartCall),
  SystemSound(id: 1255, fileName: "short_double_high.caf", category: .headsetRedial),
  SystemSound(id: 1256, fileName: "short_low_high.caf", category: .headsetAnswerCall),
  SystemSound(id: 1257, fileName: "short_double_low.caf", category: .headsetEndCall),
  SystemSound(id: 1258, fileName: "short_double_low.caf", category: .headsetCallWaitingActions),
  SystemSound(id: 1259, fileName: "middle_9_short_double_low.caf", category: .headsetTransitionEnd),
  SystemSound(id: 1300, fileName: "Voicemail.caf", category: .systemSoundPreview),
  SystemSound(id: 1301, fileName: "ReceivedMessage.caf", category: .systemSoundPreview),
  SystemSound(id: 1302, fileName: "new-mail.caf", category: .systemSoundPreview),
  SystemSound(id: 1303, fileName: "mail-sent.caf", category: .systemSoundPreview),
  SystemSound(id: 1304, fileName: "alarm.caf", category: .systemSoundPreview),
  SystemSound(id: 1305, fileName: "lock.caf", category: .systemSoundPreview),
  SystemSound(id: 1306, fileName: "Tock.caf", category: .keyPressClickPreview),
  SystemSound(id: 1307, fileName: "sms-received1.caf", category: .smsReceivedSelection),
  SystemSound(id: 1308, fileName: "sms-received2.caf", category: .smsReceivedSelection),
  SystemSound(id: 1309, fileName: "sms-received3.caf", category: .smsReceivedSelection),
  SystemSound(id: 1310, fileName: "sms-received4.caf", category: .smsReceivedSelection),
  SystemSound(id: 1311, fileName: "-", category: .smsReceivedVibrate),
  SystemSound(id: 1312, fileName: "sms-received1.caf", category: .smsReceivedSelection),
  SystemSound(id: 1313, fileName: "sms-received5.caf", category: .smsReceivedSelection),
  SystemSound(id: 1314, fileName: "sms-received6.caf", category: .smsReceivedSelection),
  SystemSound(id: 1315, fileName: "Voicemail.caf", category: .systemSoundPreview),
  SystemSound(id: 1320, fileName: "Anticipate.caf", category: .smsReceivedSelection),
  SystemSound(id: 1321, fileName: "Bloom.caf", category: .smsReceivedSelection),
  SystemSound(id: 1322, fileName: "Calypso.caf", category: .smsReceivedSelection),
  SystemSound(id: 1323, fileName: "Choo_Choo.caf", category: .smsReceivedSelection),
  SystemSound(id: 1324, fileName: "Descent.caf", category: .smsReceivedSelection),
  SystemSound(id: 1325, fileName: "Fanfare.caf", category: .smsReceivedSelection),
  SystemSound(id: 1326, fileName: "Ladder.caf", category: .smsReceivedSelection),
  SystemSound(id: 1327, fileName: "Minuet.caf", category: .smsReceivedSelection),
  SystemSound(id: 1328, fileName: "News_Flash.caf", category: .smsReceivedSelection),
  SystemSound(id: 1329, fileName: "Noir.caf", category: .smsReceivedSelection),
  SystemSound(id: 1330, fileName: "Sherwood_Forest.caf", category: .smsReceivedSelection),
  SystemSound(id: 1331, fileName: "Spell.caf", category: .smsReceivedSelection),
  SystemSound(id: 1332, fileName: "Suspense.caf", category: .smsReceivedSelection),
  SystemSound(id: 1333, fileName: "Telegraph.caf", category: .smsReceivedSelection),
  SystemSound(id: 1334, fileName: "Tiptoes.caf", category: .smsReceivedSelection),
  SystemSound(id: 1335, fileName: "Typewriters.caf", category: .smsReceivedSelection),
  SystemSound(id: 1336, fileName: "Update.caf", category: .smsReceivedSelection),
  SystemSound(id: 1350, fileName: "-", category: .ringerVibeChanged),
  SystemSound(id: 1351, fileName: "-", category: .silentVibeChanged),
  SystemSound(id: 4095, fileName: "-", category: .vibrate)
]

// Copy Origin Data
//let systemSounds: [SystemSound] = [
//  SystemSound(id: 1000, fileName: "new-mail.caf", category: "MailReceived"),
//  SystemSound(id: 1001, fileName: "mail-sent.caf", category: "MailSent"),
//  SystemSound(id: 1002, fileName: "Voicemail.caf", category: "VoicemailReceived"),
//  SystemSound(id: 1003, fileName: "ReceivedMessage.caf", category: "SMSReceived"),
//  SystemSound(id: 1004, fileName: "SentMessage.caf", category: "SMSSent"),
//  SystemSound(id: 1005, fileName: "alarm.caf", category: "CalendarAlert"),
//  SystemSound(id: 1006, fileName: "low_power.caf", category: "LowPower"),
//  SystemSound(id: 1007, fileName: "sms-received1.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1008, fileName: "sms-received2.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1009, fileName: "sms-received3.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1010, fileName: "sms-received4.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1011, fileName: "-", category: "SMSReceived_Vibrate"),
//  SystemSound(id: 1012, fileName: "sms-received1.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1013, fileName: "sms-received5.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1014, fileName: "sms-received6.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1015, fileName: "Voicemail.caf", category: "-"),
//  SystemSound(id: 1016, fileName: "tweet_sent.caf", category: "SMSSent"),
//  SystemSound(id: 1020, fileName: "Anticipate.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1021, fileName: "Bloom.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1022, fileName: "Calypso.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1023, fileName: "Choo_Choo.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1024, fileName: "Descent.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1025, fileName: "Fanfare.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1026, fileName: "Ladder.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1027, fileName: "Minuet.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1028, fileName: "News_Flash.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1029, fileName: "Noir.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1030, fileName: "Sherwood_Forest.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1031, fileName: "Spell.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1032, fileName: "Suspense.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1033, fileName: "Telegraph.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1034, fileName: "Tiptoes.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1035, fileName: "Typewriters.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1036, fileName: "Update.caf", category: "SMSReceived_Alert"),
//  SystemSound(id: 1050, fileName: "ussd.caf", category: "USSDAlert"),
//  SystemSound(id: 1051, fileName: "SIMToolkitCallDropped.caf", category: "SIMToolkitTone"),
//  SystemSound(id: 1052, fileName: "SIMToolkitGeneralBeep.caf", category: "SIMToolkitTone"),
//  SystemSound(id: 1053, fileName: "SIMToolkitNegativeACK.caf", category: "SIMToolkitTone"),
//  SystemSound(id: 1054, fileName: "SIMToolkitPositiveACK.caf", category: "SIMToolkitTone"),
//  SystemSound(id: 1055, fileName: "SIMToolkitSMS.caf", category: "SIMToolkitTone"),
//  SystemSound(id: 1057, fileName: "Tink.caf", category: "PINKeyPressed"),
//  SystemSound(id: 1070, fileName: "ct-busy.caf", category: "AudioToneBusy"),
//  SystemSound(id: 1071, fileName: "ct-congestion.caf", category: "AudioToneCongestion"),
//  SystemSound(id: 1072, fileName: "ct-path-ack.caf", category: "AudioTonePathAcknowledge"),
//  SystemSound(id: 1073, fileName: "ct-error.caf", category: "AudioToneError"),
//  SystemSound(id: 1074, fileName: "ct-call-waiting.caf", category: "AudioToneCallWaiting"),
//  SystemSound(id: 1075, fileName: "ct-keytone2.caf", category: "AudioToneKey2"),
//  SystemSound(id: 1100, fileName: "lock.caf", category: "ScreenLocked"),
//  SystemSound(id: 1101, fileName: "unlock.caf", category: "ScreenUnlocked"),
//  SystemSound(id: 1102, fileName: "-", category: "FailedUnlock"),
//  SystemSound(id: 1103, fileName: "Tink.caf", category: "KeyPressed"),
//  SystemSound(id: 1104, fileName: "Tock.caf", category: "KeyPressed"),
//  SystemSound(id: 1105, fileName: "Tock.caf", category: "KeyPressed"),
//  SystemSound(id: 1106, fileName: "beep-beep.caf", category: "ConnectedToPower"),
//  SystemSound(id: 1107, fileName: "RingerChanged.caf", category: "RingerSwitchIndication"),
//  SystemSound(id: 1108, fileName: "photoShutter.caf", category: "CameraShutter"),
//  SystemSound(id: 1109, fileName: "shake.caf", category: "ShakeToShuffle"),
//  SystemSound(id: 1110, fileName: "jbl_begin.caf", category: "JBL_Begin"),
//  SystemSound(id: 1111, fileName: "jbl_confirm.caf", category: "JBL_Confirm"),
//  SystemSound(id: 1112, fileName: "jbl_cancel.caf", category: "JBL_Cancel"),
//  SystemSound(id: 1113, fileName: "begin_record.caf", category: "BeginRecording"),
//  SystemSound(id: 1114, fileName: "end_record.caf", category: "EndRecording"),
//  SystemSound(id: 1115, fileName: "jbl_ambiguous.caf", category: "JBL_Ambiguous"),
//  SystemSound(id: 1116, fileName: "jbl_no_match.caf", category: "JBL_NoMatch"),
//  SystemSound(id: 1117, fileName: "begin_video_record.caf", category: "BeginVideoRecording"),
//  SystemSound(id: 1118, fileName: "end_video_record.caf", category: "EndVideoRecording"),
//  SystemSound(id: 1150, fileName: "vc~invitation-accepted.caf", category: "VCInvitationAccepted"),
//  SystemSound(id: 1151, fileName: "vc~ringing.caf", category: "VCRinging"),
//  SystemSound(id: 1152, fileName: "vc~ended.caf", category: "VCEnded"),
//  SystemSound(id: 1153, fileName: "ct-call-waiting.caf", category: "VCCallWaiting"),
//  SystemSound(id: 1154, fileName: "vc~ringing.caf", category: "VCCallUpgrade"),
//  SystemSound(id: 1200, fileName: "dtmf-0.caf", category: "TouchTone"),
//  SystemSound(id: 1201, fileName: "dtmf-1.caf", category: "TouchTone"),
//  SystemSound(id: 1202, fileName: "dtmf-2.caf", category: "TouchTone"),
//  SystemSound(id: 1203, fileName: "dtmf-3.caf", category: "TouchTone"),
//  SystemSound(id: 1204, fileName: "dtmf-4.caf", category: "TouchTone"),
//  SystemSound(id: 1205, fileName: "dtmf-5.caf", category: "TouchTone"),
//  SystemSound(id: 1206, fileName: "dtmf-6.caf", category: "TouchTone"),
//  SystemSound(id: 1207, fileName: "dtmf-7.caf", category: "TouchTone"),
//  SystemSound(id: 1208, fileName: "dtmf-8.caf", category: "TouchTone"),
//  SystemSound(id: 1209, fileName: "dtmf-9.caf", category: "TouchTone"),
//  SystemSound(id: 1210, fileName: "dtmf-star.caf", category: "TouchTone"),
//  SystemSound(id: 1211, fileName: "dtmf-pound.caf", category: "TouchTone"),
//  SystemSound(id: 1254, fileName: "long_low_short_high.caf", category: "Headset_StartCall"),
//  SystemSound(id: 1255, fileName: "short_double_high.caf", category: "Headset_Redial"),
//  SystemSound(id: 1256, fileName: "short_low_high.caf", category: "Headset_AnswerCall"),
//  SystemSound(id: 1257, fileName: "short_double_low.caf", category: "Headset_EndCall"),
//  SystemSound(id: 1258, fileName: "short_double_low.caf", category: "Headset_CallWaitingActions"),
//  SystemSound(id: 1259, fileName: "middle_9_short_double_low.caf", category: "Headset_TransitionEnd"),
//  SystemSound(id: 1300, fileName: "Voicemail.caf", category: "SystemSoundPreview"),
//  SystemSound(id: 1301, fileName: "ReceivedMessage.caf", category: "SystemSoundPreview"),
//  SystemSound(id: 1302, fileName: "new-mail.caf", category: "SystemSoundPreview"),
//  SystemSound(id: 1303, fileName: "mail-sent.caf", category: "SystemSoundPreview"),
//  SystemSound(id: 1304, fileName: "alarm.caf", category: "SystemSoundPreview"),
//  SystemSound(id: 1305, fileName: "lock.caf", category: "SystemSoundPreview"),
//  SystemSound(id: 1306, fileName: "Tock.caf", category: "KeyPressClickPreview"),
//  SystemSound(id: 1307, fileName: "sms-received1.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1308, fileName: "sms-received2.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1309, fileName: "sms-received3.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1310, fileName: "sms-received4.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1311, fileName: "-", category: "SMSReceived_Vibrate"),
//  SystemSound(id: 1312, fileName: "sms-received1.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1313, fileName: "sms-received5.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1314, fileName: "sms-received6.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1315, fileName: "Voicemail.caf", category: "SystemSoundPreview"),
//  SystemSound(id: 1320, fileName: "Anticipate.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1321, fileName: "Bloom.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1322, fileName: "Calypso.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1323, fileName: "Choo_Choo.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1324, fileName: "Descent.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1325, fileName: "Fanfare.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1326, fileName: "Ladder.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1327, fileName: "Minuet.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1328, fileName: "News_Flash.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1329, fileName: "Noir.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1330, fileName: "Sherwood_Forest.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1331, fileName: "Spell.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1332, fileName: "Suspense.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1333, fileName: "Telegraph.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1334, fileName: "Tiptoes.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1335, fileName: "Typewriters.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1336, fileName: "Update.caf", category: "SMSReceived_Selection"),
//  SystemSound(id: 1350, fileName: "-", category: "RingerVibeChanged"),
//  SystemSound(id: 1351, fileName: "-", category: "SilentVibeChanged"),
//  SystemSound(id: 4095, fileName: "-", category: "Vibrate")
//]
