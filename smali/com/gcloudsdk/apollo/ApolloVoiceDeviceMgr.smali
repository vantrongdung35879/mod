.class public Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;
.super Ljava/lang/Object;
.source "ApolloVoiceDeviceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;
    }
.end annotation


# static fields
.field private static final MODE_RESET:I = -0x2

.field private static final MODE_SET_AUTO:I = -0x1

.field private static final MODE_SET_ONLY:I = -0x3

.field private static final SCO_CHECK_INTERL:I = 0x7d0

.field private static final SCO_CHECK_TIME_MAX:I = 0x2

.field private static appname:Ljava/lang/String; = ""

.field private static bAudioFocus:Z = false

.field private static bEmulate:Z = false

.field private static bFocusPause:Z = false

.field private static bGvoiceDsp:Z = false

.field private static bNeedSetFocus:Z = true

.field private static bPermissionOK:Z = false

.field private static checkDsp:Ljava/lang/String; = null

.field private static dataPath:Ljava/lang/String; = null

.field private static mActivity:Landroid/app/Activity; = null

.field private static mAudioDeviceListener:Lcom/gcloudsdk/apollo/apollovoice/httpclient/AudioDeviceListener; = null

.field private static mAudioFocusChangeListener:Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener; = null

.field private static mAudioManager:Landroid/media/AudioManager; = null

.field private static mAudioStatusEvent:I = 0x0

.field private static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter; = null

.field private static mBluetoothSCO:Z = false

.field private static mBluetoothSCOEnable:Z = false

.field private static mBluetoothState:I = -0x64

.field private static mCheckDeviceFlag:Z = false

.field private static mContext:Landroid/content/Context; = null

.field private static mCurrVoipState:Z = false

.field private static mGCloudVoiceNotify:Lcom/gcloudsdk/gcloud/voice/IGCloudVoiceNotify; = null

.field private static mHeadSetReceiver:Landroid/content/BroadcastReceiver; = null

.field private static mIsBluetoothConnected:Z = false

.field private static mIsHeadsetConnected:Z = false

.field private static mIsMicOpen:Z = false

.field private static mIsMultiDeviceConnected:Z = false

.field private static mMode:I = -0x1

.field private static mSCOReConnecteTimes:I = 0x0

.field private static mScoThreadRunning:Z = false

.field protected static mSpeakerphoneOn:Z = true

.field private static m_bFirstBluePermission:Z = false

.field private static m_bRequestedBluePermission:Z = false

.field private static m_bRequestedFocus:Z = true

.field private static maxVolCall:I = 0x0

.field private static maxVolMusic:I = 0x0

.field private static nGvoiceDspApiVersion:I = -0x1

.field private static nGvoiceDspSet:I = 0x0

.field private static nLangType:I = -0x1

.field private static taragetSdkVersion:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    :try_start_0
    const-string v0, "GCloudVoice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "load library failed!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    :goto_0
    new-instance v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$1;

    invoke-direct {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$1;-><init>()V

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mHeadSetReceiver:Landroid/content/BroadcastReceiver;

    .line 742
    new-instance v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$2;

    invoke-direct {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$2;-><init>()V

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioDeviceListener:Lcom/gcloudsdk/apollo/apollovoice/httpclient/AudioDeviceListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ApolloVoiceCheckMode()I
    .locals 6

    .line 1327
    const-string v0, "cur mode:"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApolloVoiceCheckMode mode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 1328
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 1334
    :cond_0
    :try_start_0
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 1335
    sget v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mMode:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 1337
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 1338
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    sget v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mMode:I

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 1345
    invoke-static {v5}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetSpeakerOn(Z)V

    .line 1347
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    sget v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mMode:I

    if-eq v1, v3, :cond_1

    .line 1349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,want mode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mMode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return v2

    .line 1354
    :cond_1
    const-string v0, "Check mode succ."

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return v5

    .line 1342
    :cond_2
    invoke-static {v5}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetSpeakerOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    .line 1360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public static ApolloVoiceDeviceInit(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 6

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GCloudVoice Version in java code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceVersion;->Version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 151
    const-string v0, "ApolloVoiceDeviceInit"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    sput-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    .line 156
    const-string v0, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->CheckManifestPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    const-string p0, "Check the permissions GVoice needed!"

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    return-void

    .line 162
    :cond_1
    sput-object p1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mActivity:Landroid/app/Activity;

    .line 163
    invoke-static {p1}, Lcom/gcloudsdk/apollo/NetInterfaceHelper;->init(Landroid/content/Context;)V

    .line 165
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 169
    :cond_2
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->CheckSysLang()I

    .line 171
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->CheckDeviceInfo()Z

    move-result p1

    sput-boolean p1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bEmulate:Z

    .line 173
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->GetTargetSdkVer()V

    .line 176
    const-string p1, "GVOICE_DSP:getParameters begin"

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 178
    :try_start_0
    const-string v2, "GVOICE_DSP:try getParameters version 1"

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 179
    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "vivo_adsp_support_gvoice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->checkDsp:Ljava/lang/String;

    .line 180
    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 181
    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->checkDsp:Ljava/lang/String;

    const-string/jumbo v3, "vivo_adsp_support_gvoice=true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    const-string v2, "GVOICE_DSP:APP supports gvoice dsp api(v1). NS will run on adsp"

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 184
    sput v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspApiVersion:I

    .line 185
    sput v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspSet:I

    .line 186
    sput-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bGvoiceDsp:Z

    goto/16 :goto_0

    .line 188
    :cond_3
    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->checkDsp:Ljava/lang/String;

    const-string/jumbo v3, "vivo_adsp_support_gvoice=false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    const-string v2, "GVOICE_DSP:APP does not support gvoice dsp(v1).No gvoice module runs on adsp"

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 191
    sput v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspApiVersion:I

    .line 192
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspSet:I

    .line 193
    sput-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bGvoiceDsp:Z

    goto/16 :goto_0

    .line 198
    :cond_4
    const-string v2, "GVOICE_DSP:try getParameters version 2"

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 199
    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "adsp_support_gvoice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->checkDsp:Ljava/lang/String;

    .line 200
    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 201
    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->checkDsp:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 203
    const-string v3, "adsp_support_gvoice=0001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    const-string v4, "GVOICE_DSP:APP supports gvoice dsp(v2).nGvoiceDspSet="

    if-eqz v2, :cond_5

    .line 205
    :try_start_1
    sput v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspSet:I

    .line 206
    sput-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bGvoiceDsp:Z

    .line 207
    sput v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspApiVersion:I

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspSet:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_5
    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->checkDsp:Ljava/lang/String;

    const-string v5, "adsp_support_gvoice=0010"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 212
    sput v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspSet:I

    .line 213
    sput-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bGvoiceDsp:Z

    .line 214
    sput v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspApiVersion:I

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspSet:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_6
    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->checkDsp:Ljava/lang/String;

    const-string v5, "adsp_support_gvoice=0011"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 219
    sput p1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspSet:I

    .line 220
    sput-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bGvoiceDsp:Z

    .line 221
    sput v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspApiVersion:I

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspSet:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_7
    const-string v2, "GVOICE_DSP:reset nGvoiceDspSet to 0,reset bGvoiceDsp to false"

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 227
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspSet:I

    .line 228
    sput-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bGvoiceDsp:Z

    goto :goto_0

    .line 233
    :cond_8
    const-string v2, "GVOICE_DSP:getParameters(adsp_support_gvoice)  returns null"

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 236
    :goto_0
    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->SetGVoiceDsp(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 238
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    :goto_1
    const-string v2, "GVOICE_DSP:getParameters done"

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 244
    :try_start_2
    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 246
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 261
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apollovoicemanager:: getMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 263
    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_9

    .line 270
    :try_start_3
    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    sput p1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->maxVolMusic:I

    .line 271
    sget-object p1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    sput p1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->maxVolCall:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Init failed!!! The exception is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 275
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GCloudVoice::max music "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->maxVolMusic:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "max call =  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->maxVolCall:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 277
    :cond_9
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->registerHeadsetPlugReceiver()V

    .line 278
    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceConfig;->SetContext(Landroid/content/Context;)V

    .line 279
    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->SetContext(Landroid/content/Context;)V

    .line 280
    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceNetStatus;->SetContext(Landroid/content/Context;)V

    .line 281
    invoke-static {p0}, Lcom/gcloudsdk/apollo/apollovoice/httpclient/HttpsUtils;->setContext(Landroid/content/Context;)V

    .line 283
    new-instance p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;-><init>(Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$1;)V

    sput-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioFocusChangeListener:Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;

    .line 285
    sget-boolean p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->m_bRequestedFocus:Z

    if-eqz p0, :cond_a

    .line 287
    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->EnableAudioFocus(Z)I

    :cond_a
    return-void
.end method

.method public static ApolloVoiceDeviceSetMode(I)Z
    .locals 5

    const-string v0, "cur mode:"

    const-string v1, "ApolloVoiceDeviceSetMode curmode:"

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ApolloVoiceDeviceSetMode mode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 515
    :cond_0
    sput p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mMode:I

    .line 520
    :try_start_0
    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 524
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->setMode(I)V

    .line 528
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-eq v1, p0, :cond_1

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,want mode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    .line 536
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static ApolloVoiceDeviceUninit()V
    .locals 3

    const/4 v0, 0x0

    .line 297
    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mActivity:Landroid/app/Activity;

    .line 298
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 299
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->unregisterHeadsetPlugReceiver()V

    .line 300
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 301
    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    .line 302
    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static ApolloVoiceGetCurrMode()I
    .locals 1

    .line 313
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public static ApolloVoiceSetSpeakerOn(Z)V
    .locals 2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "apolloVoiceDevice::SetSpeakerOn is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsHeadsetConnected:Z

    if-nez v0, :cond_1

    .line 495
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 499
    :cond_1
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 504
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 506
    :goto_0
    sput-boolean p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    return-void
.end method

.method public static CheckBluePermission()V
    .locals 2

    .line 1481
    const-string v0, "ApolloVoiceDevice check blue permission.\n"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 1483
    :try_start_0
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 1487
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 1488
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1497
    :cond_0
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 1499
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1501
    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->RequestBluePerssion(Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1505
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static CheckDeviceInfo()Z
    .locals 7

    .line 1384
    const-string v0, "74656e63656e74"

    const-string v1, "google_sdk"

    const/4 v2, 0x0

    .line 1386
    :try_start_0
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->Brand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1387
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->FingerID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1388
    invoke-static {v3}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1389
    invoke-static {v4}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 1391
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->FingerID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "generic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1392
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->Model()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1393
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->Model()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "droid4x"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1394
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->Model()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Emulator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1395
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->Model()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Android SDK built for x86"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1396
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->ManuID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Genymotion"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1397
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->ProductID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sdk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1398
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->ProductID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1399
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->ProductID()Ljava/lang/String;

    move-result-object v1

    const-string v5, "sdk_x86"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1400
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceUDID;->ProductID()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "vbox86p"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1401
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1402
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1406
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v2
.end method

.method public static CheckManifestPermission(Ljava/lang/String;)Z
    .locals 7

    .line 126
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 128
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 129
    sget-object v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1000

    .line 129
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 131
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 133
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 134
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    const-string p0, "Check permission ok."

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 136
    sput-boolean v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bPermissionOK:Z

    return v2

    .line 139
    :cond_1
    invoke-static {v5}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 142
    :catch_0
    const-string p0, "getPackageName throw an exception!"

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    return v2
.end method

.method public static CheckPermiss(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 584
    :try_start_0
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    .line 590
    :catch_0
    const-string p0, "CheckPermiss get an exception !"

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogW(Ljava/lang/String;)V

    return v0
.end method

.method public static CheckSysLang()I
    .locals 5

    .line 945
    const-string v0, "en"

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 946
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string/jumbo v4, "zh"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 948
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 950
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 954
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 957
    :cond_1
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 959
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 961
    :cond_2
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, "ja"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    .line 963
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 965
    :cond_3
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, "ko"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    .line 967
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 969
    :cond_4
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, "de"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x4

    .line 971
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 973
    :cond_5
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x5

    .line 975
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 977
    :cond_6
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, "es"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x6

    .line 979
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 981
    :cond_7
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, "it"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x7

    .line 983
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 985
    :cond_8
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    .line 987
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 989
    :cond_9
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    .line 991
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 993
    :cond_a
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    .line 995
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 997
    :cond_b
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "vi"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    .line 999
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1001
    :cond_c
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "id"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    .line 1003
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1005
    :cond_d
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ms"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xd

    .line 1007
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1009
    :cond_e
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "th"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    .line 1011
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1013
    :cond_f
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "af"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x10

    .line 1015
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1017
    :cond_10
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "sq"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x11

    .line 1019
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1021
    :cond_11
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "am"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x12

    .line 1023
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1025
    :cond_12
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ar"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x13

    .line 1027
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1029
    :cond_13
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "hy"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x14

    .line 1031
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1033
    :cond_14
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "az"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x15

    .line 1035
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1037
    :cond_15
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "eu"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x16

    .line 1039
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1041
    :cond_16
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "bn"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x17

    .line 1043
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1045
    :cond_17
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "bs"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x18

    .line 1047
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1049
    :cond_18
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "bg"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x19

    .line 1051
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1053
    :cond_19
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "my"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x1a

    .line 1055
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1057
    :cond_1a
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ca"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x1b

    .line 1059
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1061
    :cond_1b
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "hr"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x1c

    .line 1063
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1065
    :cond_1c
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "cs"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x1d

    .line 1067
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1069
    :cond_1d
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "da"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x1e

    .line 1071
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1073
    :cond_1e
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "nl"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x1f

    .line 1075
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1077
    :cond_1f
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "et"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x20

    .line 1079
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1081
    :cond_20
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "fil"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x21

    .line 1083
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1085
    :cond_21
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "fi"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x22

    .line 1087
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1089
    :cond_22
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "gl"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0x23

    .line 1091
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1093
    :cond_23
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ka"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x24

    .line 1095
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1097
    :cond_24
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "el"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x25

    .line 1099
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1101
    :cond_25
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "gu"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x26

    .line 1103
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1105
    :cond_26
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "iw"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0x27

    .line 1107
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1109
    :cond_27
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "hi"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0x28

    .line 1111
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1113
    :cond_28
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "hu"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x29

    .line 1115
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1117
    :cond_29
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "is"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v0, 0x2a

    .line 1119
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1121
    :cond_2a
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "jv"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x2b

    .line 1123
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1125
    :cond_2b
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "kn"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0x2c

    .line 1127
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1129
    :cond_2c
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "kk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0x2d

    .line 1131
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1133
    :cond_2d
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "km"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x2e

    .line 1135
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1137
    :cond_2e
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "lo"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x2f

    .line 1139
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1141
    :cond_2f
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "lv"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x30

    .line 1143
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1145
    :cond_30
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "lt"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v0, 0x31

    .line 1147
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1149
    :cond_31
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "mk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 v0, 0x32

    .line 1151
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1153
    :cond_32
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ml"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0x33

    .line 1155
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1157
    :cond_33
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "mr"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v0, 0x34

    .line 1159
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1161
    :cond_34
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "mn"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 v0, 0x35

    .line 1163
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1165
    :cond_35
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ne"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0x36

    .line 1167
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1169
    :cond_36
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "no"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x37

    .line 1171
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1173
    :cond_37
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "fa"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0x38

    .line 1175
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1177
    :cond_38
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pl"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/16 v0, 0x39

    .line 1179
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1181
    :cond_39
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pa"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v0, 0x3a

    .line 1183
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1185
    :cond_3a
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ro"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v0, 0x3b

    .line 1187
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1189
    :cond_3b
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "sr"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v0, 0x3c

    .line 1191
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1193
    :cond_3c
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "si"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/16 v0, 0x3d

    .line 1195
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1197
    :cond_3d
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "sk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/16 v0, 0x3e

    .line 1199
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1201
    :cond_3e
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "sl"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/16 v0, 0x3f

    .line 1203
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1205
    :cond_3f
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "su"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/16 v0, 0x40

    .line 1207
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1209
    :cond_40
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "sw"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/16 v0, 0x41

    .line 1211
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1213
    :cond_41
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "sv"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/16 v0, 0x42

    .line 1215
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1217
    :cond_42
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "ta"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/16 v0, 0x43

    .line 1219
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto/16 :goto_0

    .line 1221
    :cond_43
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "te"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/16 v0, 0x44

    .line 1223
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto :goto_0

    .line 1225
    :cond_44
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "uk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/16 v0, 0x45

    .line 1227
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto :goto_0

    .line 1229
    :cond_45
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "ur"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/16 v0, 0x46

    .line 1231
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto :goto_0

    .line 1233
    :cond_46
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "uz"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/16 v0, 0x47

    .line 1235
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    goto :goto_0

    .line 1237
    :cond_47
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "zu"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/16 v0, 0x48

    .line 1239
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1244
    :catch_0
    const-string v0, "CheckSysLang fail.\n"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1245
    sput v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    .line 1247
    :cond_48
    :goto_0
    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    return v0
.end method

.method public static EnableAudioFocus(Z)I
    .locals 5

    .line 1260
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bAudioFocus:Z

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    .line 1264
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "EnableAudioFocus: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 1265
    const-string v0, "requestAudioFocus exception."

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    .line 1275
    :try_start_0
    sget-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    sget-object v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioFocusChangeListener:Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    if-ne p0, v2, :cond_1

    .line 1278
    const-string p0, "own requestAudioFocus  successfully."

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 1279
    sput-boolean v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bAudioFocus:Z

    goto :goto_0

    .line 1283
    :cond_1
    sput-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bAudioFocus:Z

    .line 1284
    const-string p0, "own requestAudioFocus  failed."

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1288
    :catch_0
    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    goto :goto_0

    .line 1301
    :cond_2
    :try_start_1
    sget-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    sget-object v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioFocusChangeListener:Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;

    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    if-ne p0, v2, :cond_3

    .line 1304
    const-string p0, "own abandonAudioFocus  successfully."

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 1305
    sput-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bAudioFocus:Z

    goto :goto_0

    .line 1309
    :cond_3
    sput-boolean v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bAudioFocus:Z

    .line 1310
    const-string p0, "own abandonAudioFocus  failed."

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1314
    :catch_1
    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public static GetLangType()I
    .locals 1

    .line 1253
    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nLangType:I

    return v0
.end method

.method public static GetSupportGVoiceDspSet()I
    .locals 2

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GVOICE_DSP:GetSupportGVoiceDspSet return nGvoiceDspSet="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 696
    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspSet:I

    return v0
.end method

.method public static GetTargetSdkVer()V
    .locals 4

    .line 116
    const-string/jumbo v0, "targetSdkVersion = "

    :try_start_0
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 116
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 118
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->taragetSdkVersion:I

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->taragetSdkVersion:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t find package : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static HaveMicrophonePermission(Z)Z
    .locals 6

    .line 545
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bPermissionOK:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 551
    :cond_0
    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->taragetSdkVersion:I

    const/16 v2, 0x17

    const-string v3, "Don\'t have microphone permission"

    const-string v4, "android.permission.RECORD_AUDIO"

    if-ge v0, v2, :cond_1

    .line 552
    invoke-static {v4}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->CheckPermiss(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    invoke-static {v3}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    return v1

    .line 558
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "buildVersion = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 559
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    if-lt v0, v2, :cond_4

    .line 560
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 562
    invoke-static {v3}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 564
    sget-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mActivity:Landroid/app/Activity;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x64

    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    return v1

    .line 569
    :cond_3
    const-string p0, "Have microphone permission"

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return v5

    .line 573
    :cond_4
    invoke-static {v4}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->CheckPermiss(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 574
    invoke-static {v3}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    return v1

    :cond_5
    return v5

    .line 546
    :cond_6
    :goto_0
    sget-boolean p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bPermissionOK:Z

    if-eqz p0, :cond_7

    const-string p0, "bPermissionOK"

    goto :goto_1

    :cond_7
    const-string p0, "not bPermissionOK"

    :goto_1
    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    return v1
.end method

.method public static IsDeviceEmu()Z
    .locals 2

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device is Emu "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bEmulate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 1414
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bEmulate:Z

    return v0
.end method

.method private static IsHeadSet()Z
    .locals 1

    .line 306
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static IsSupportGVoiceDsp()Z
    .locals 1

    .line 689
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bGvoiceDsp:Z

    return v0
.end method

.method public static RequestBluePerssion(Z)Z
    .locals 5

    .line 1419
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-lt v1, v2, :cond_5

    .line 1421
    const-string v1, "ApolloVoiceDevice request blue permission.\n"

    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1423
    :try_start_0
    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->CheckManifestPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1425
    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 1428
    const-string v2, "Don\'t have blue permission"

    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    .line 1429
    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x64

    if-nez v2, :cond_2

    .line 1431
    sget-boolean v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->m_bFirstBluePermission:Z

    if-nez v2, :cond_0

    if-eqz p0, :cond_1

    .line 1435
    sget-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mActivity:Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1438
    sget-boolean p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->m_bFirstBluePermission:Z

    if-nez p0, :cond_1

    .line 1440
    sput-boolean v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->m_bFirstBluePermission:Z

    goto :goto_0

    .line 1446
    :cond_0
    const-string/jumbo p0, "user forbidden blue permissions.\n"

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p0, :cond_3

    .line 1452
    sget-boolean p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->m_bRequestedBluePermission:Z

    if-nez p0, :cond_3

    .line 1454
    sget-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mActivity:Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1456
    sput-boolean v3, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->m_bRequestedBluePermission:Z

    .line 1459
    :cond_3
    const-string p0, "request blue permissions.\n"

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return v3

    .line 1465
    :cond_4
    const-string p0, "Have blue permission"

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    .line 1471
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_5
    return v3
.end method

.method public static SetBluetoothSCOEnable(Z)V
    .locals 2

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bluetoothSCOEnable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 892
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    .line 897
    :try_start_0
    sget-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 899
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceGetCurrMode()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    .line 901
    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceDeviceSetMode(I)Z

    .line 903
    :cond_1
    sget-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_0

    .line 908
    :cond_2
    sget-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 910
    sget-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 915
    :catch_0
    const-string p0, "SetBluetoothSCOEnable set fail.\n"

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static SetGVoiceDsp(Z)V
    .locals 4

    const-string v0, "GVOICE_DSP:SetGVoiceDsp(bGvoiceDsp="

    .line 702
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    return-void

    .line 706
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bGvoiceDsp:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",nGvoiceDspApiVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspApiVersion:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 707
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bGvoiceDsp:Z

    if-eqz v0, :cond_4

    .line 708
    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->nGvoiceDspApiVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "GVOICE_DSP:enable gvoice dsp."

    const-string v2, "GVOICE_DSP:disable gvoice dsp."

    const/4 v3, 0x1

    if-ne v3, v0, :cond_2

    if-eqz p0, :cond_1

    .line 710
    :try_start_1
    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 711
    sget-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v0, "vivo_adsp_gvoice_mode=true"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 714
    :cond_1
    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 715
    sget-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v0, "vivo_adsp_gvoice_mode=false"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    .line 721
    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 722
    sget-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "adsp_gvoice_mode=true"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_3
    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 726
    sget-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "adsp_gvoice_mode=false"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 732
    :catch_0
    const-string p0, "GVOICE_DSP:SetGVoiceDsp set fail.\n"

    invoke-static {p0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static SetRequestBlueState(Z)V
    .locals 2

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApolloVoiceDevice set request blue permission status "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 1512
    sput-boolean p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->m_bRequestedBluePermission:Z

    return-void
.end method

.method public static SetRequestFocus(Z)V
    .locals 2

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApolloVoiceDevice set request focus status "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 1518
    sput-boolean p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->m_bRequestedFocus:Z

    return-void
.end method

.method public static SetpreVoipMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 354
    :goto_0
    sput-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mCurrVoipState:Z

    return-void
.end method

.method static synthetic access$100()Landroid/media/AudioManager;
    .locals 1

    .line 44
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bFocusPause:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    .line 44
    sput-boolean p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bFocusPause:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 44
    sput-boolean p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    return p0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 44
    sget v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioStatusEvent:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0

    .line 44
    sput p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioStatusEvent:I

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsHeadsetConnected:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 44
    sput-boolean p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsHeadsetConnected:Z

    return p0
.end method

.method static synthetic access$502(I)I
    .locals 0

    .line 44
    sput p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mBluetoothState:I

    return p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 44
    sput-boolean p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mBluetoothSCO:Z

    return p0
.end method

.method static synthetic access$700()Lcom/gcloudsdk/apollo/apollovoice/httpclient/AudioDeviceListener;
    .locals 1

    .line 44
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioDeviceListener:Lcom/gcloudsdk/apollo/apollovoice/httpclient/AudioDeviceListener;

    return-object v0
.end method

.method static synthetic access$800()Lcom/gcloudsdk/gcloud/voice/IGCloudVoiceNotify;
    .locals 1

    .line 44
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mGCloudVoiceNotify:Lcom/gcloudsdk/gcloud/voice/IGCloudVoiceNotify;

    return-object v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    .line 44
    sput-boolean p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bNeedSetFocus:Z

    return p0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 1367
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1370
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1371
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 1372
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1373
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 1374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1376
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1378
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkAudioManagerIsInit()Z
    .locals 4

    .line 671
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 672
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 673
    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 675
    const-string v0, "apolloVoiceDevice::get AudioManager null....\n"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return v2

    :cond_0
    return v1

    .line 680
    :cond_1
    const-string v0, "apolloVoiceDevice::context is null....\n"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return v2

    :cond_2
    return v1
.end method

.method public static getAudioDeviceConnectionState()I
    .locals 10

    .line 807
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 811
    :cond_0
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 814
    sput-boolean v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsHeadsetConnected:Z

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    .line 818
    :cond_1
    sput-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsHeadsetConnected:Z

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 821
    :goto_0
    sget-object v4, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_2

    .line 825
    sget-object v4, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    const-string v5, "bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothManager;

    move-object v5, v4

    check-cast v5, Landroid/bluetooth/BluetoothManager;

    .line 826
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    sput-object v4, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 834
    :cond_2
    sget-object v4, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 836
    sget v4, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->taragetSdkVersion:I

    const/16 v5, 0x22

    if-lt v4, v5, :cond_3

    .line 838
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_3

    .line 840
    invoke-static {v2}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->RequestBluePerssion(Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 842
    const-string v1, "request bluetooth perssion fail!"

    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogW(Ljava/lang/String;)V

    return v0

    .line 851
    :cond_3
    sget v4, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->taragetSdkVersion:I

    if-lt v4, v5, :cond_4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_4

    .line 852
    sget-object v4, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 853
    const-string v0, "Don\'t have Bluetooth permission"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    return v1

    .line 859
    :cond_4
    sget-object v4, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v4

    .line 860
    sget-object v6, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v6

    .line 861
    sget-object v7, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v7

    if-eq v6, v5, :cond_6

    if-ne v4, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 866
    :cond_6
    :goto_1
    sput-boolean v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    const/4 v0, 0x2

    const/4 v9, 0x1

    :goto_2
    if-eqz v3, :cond_9

    if-eqz v9, :cond_9

    .line 870
    sput-boolean v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsMultiDeviceConnected:Z

    .line 871
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsHeadsetConnected:Z

    if-eqz v0, :cond_7

    sget-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    if-nez v1, :cond_7

    .line 873
    const-string v0, "getHeadsetDeviceStatus: wiredheadset actually!"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogW(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-nez v0, :cond_8

    .line 874
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    if-eqz v0, :cond_8

    .line 876
    const-string v0, "getHeadsetDeviceStatus: bluetooth actually!"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogW(Ljava/lang/String;)V

    const/4 v2, 0x2

    goto :goto_3

    :cond_8
    const/4 v2, 0x3

    goto :goto_3

    .line 883
    :cond_9
    sput-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsMultiDeviceConnected:Z

    move v2, v0

    .line 885
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getHeadsetDeviceStatus state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " a2dp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " headset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " health:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsHeadsetConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsHeadsetConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsBluetoothConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    move v0, v2

    :cond_a
    return v0
.end method

.method public static hasRecordPermission()Z
    .locals 11

    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    .line 611
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    const/16 v6, 0x200

    .line 612
    new-array v7, v6, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 617
    :try_start_0
    new-instance v10, Landroid/media/AudioRecord;

    const/4 v1, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 620
    :try_start_1
    invoke-virtual {v10}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 635
    invoke-virtual {v10}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 637
    const-string/jumbo v0, "startRecording but not in recording state"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V

    .line 640
    invoke-virtual {v10}, Landroid/media/AudioRecord;->release()V

    return v8

    .line 647
    :cond_0
    invoke-virtual {v10, v7, v8, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasRecordPermission is recording readsize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    if-gez v0, :cond_1

    .line 654
    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V

    .line 655
    invoke-virtual {v10}, Landroid/media/AudioRecord;->release()V

    return v8

    .line 663
    :cond_1
    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V

    .line 664
    invoke-virtual {v10}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x1

    return v0

    :catch_0
    nop

    move-object v9, v10

    goto :goto_0

    :catch_1
    nop

    .line 626
    :goto_0
    const-string v0, "IllegalStateException when startRecording, which maybe do not have RECORD_AUDIO permission in actual"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogE(Ljava/lang/String;)V

    if-eqz v9, :cond_2

    .line 629
    invoke-virtual {v9}, Landroid/media/AudioRecord;->release()V

    :cond_2
    return v8

    .line 622
    :catch_2
    const-string v0, "IllegalArgumentException when create AudioRecord"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogW(Ljava/lang/String;)V

    return v8
.end method

.method public static isBackground()Z
    .locals 3

    .line 921
    const-string v0, "is background call.\n"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 923
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    .line 926
    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 927
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 929
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 931
    :cond_0
    const-string v0, "is not background .\n"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    .line 935
    :catch_0
    const-string v0, "getMyMemoryState fail.\n"

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static isEnableFocus()Z
    .locals 2

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Need EnableAudioFocus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bNeedSetFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 1323
    sget-boolean v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->bNeedSetFocus:Z

    return v0
.end method

.method private static registerHeadsetPlugReceiver()V
    .locals 4

    .line 330
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    sget v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->taragetSdkVersion:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 343
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mHeadSetReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 346
    :cond_1
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mHeadSetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Registe headset failed!!! The exception is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setGCloudVoiceNotify(Lcom/gcloudsdk/gcloud/voice/IGCloudVoiceNotify;)V
    .locals 0

    .line 739
    sput-object p0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mGCloudVoiceNotify:Lcom/gcloudsdk/gcloud/voice/IGCloudVoiceNotify;

    return-void
.end method

.method private static unregisterHeadsetPlugReceiver()V
    .locals 3

    .line 320
    sget-object v0, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    :try_start_0
    sget-object v1, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->mHeadSetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Registe headset failed!!! The exception is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
