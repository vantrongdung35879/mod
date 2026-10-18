.class public interface abstract Lcom/gcloudsdk/gcloud/voice/IGCloudVoiceNotify;
.super Ljava/lang/Object;
.source "IGCloudVoiceNotify.java"


# virtual methods
.method public abstract OnApplyMessageKey(I)V
.end method

.method public abstract OnDownloadFile(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract OnEnableMagicVoice(ILjava/lang/String;Z)V
.end method

.method public abstract OnEnableRecvMagicVoice(IZ)V
.end method

.method public abstract OnEnableTranslate(ILjava/lang/String;I)V
.end method

.method public abstract OnEvent(ILjava/lang/String;)V
.end method

.method public abstract OnGetEncodeData([CI[I)I
.end method

.method public abstract OnGetPcmData([CI[I[I[I[I)I
.end method

.method public abstract OnJoinRoom(ILjava/lang/String;I)V
.end method

.method public abstract OnKwsHandler(ILjava/lang/String;)V
.end method

.method public abstract OnMagicVoiceMsg(ILjava/lang/String;)V
.end method

.method public abstract OnMemberVoice(Ljava/lang/String;II)V
.end method

.method public abstract OnMemberVoice(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract OnMemberVoice([II)V
.end method

.method public abstract OnMicState(I)V
.end method

.method public abstract OnPcmPlayEnd()V
.end method

.method public abstract OnPlayBGMEnd()V
.end method

.method public abstract OnPlayRecordedFile(ILjava/lang/String;)V
.end method

.method public abstract OnPlayingData([CI)V
.end method

.method public abstract OnQuitRoom(ILjava/lang/String;)V
.end method

.method public abstract OnRSTS(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract OnRSTSSpeechToSpeech(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract OnRSTSSpeechToText(IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract OnRSTSSubtitle(IIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract OnRealTimeTranslateText(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract OnRecordKaraokeDone(I)V
.end method

.method public abstract OnRecording([CI)V
.end method

.method public abstract OnReportPlayer(ILjava/lang/String;)V
.end method

.method public abstract OnRoleChanged(ILjava/lang/String;II)V
.end method

.method public abstract OnRoomMemberInfo(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract OnSTTReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract OnSentenceEnd()V
.end method

.method public abstract OnSpeechFileToText(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract OnSpeechFileTranslate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract OnSpeechToText(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract OnSpeechTranslate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract OnStatusUpdate(ILjava/lang/String;I)V
.end method

.method public abstract OnStreamSpeechToIntermediateText(Ljava/lang/String;)V
.end method

.method public abstract OnStreamSpeechToText(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract OnTextToSpeech(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract OnTextToSpeechFile(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract OnTextToStreamSpeech(ILjava/lang/String;I)V
.end method

.method public abstract OnTextTranslate(IILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract OnUploadFile(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract OnUserRndPcm(Ljava/lang/String;II[CI)V
.end method
