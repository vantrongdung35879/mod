.class public Lcom/tencent/ngame/utility/AudioUtility;
.super Ljava/lang/Object;
.source "AudioUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ngame/utility/AudioUtility$HeadSetPlugReceiver;,
        Lcom/tencent/ngame/utility/AudioUtility$VolumeChangeObserver;
    }
.end annotation


# static fields
.field private static final NGAME_AUDIO_HEADSET_PLUG_METHOD_NAME:Ljava/lang/String; = "OnHeadSetPlug"

.field private static final NGAME_AUDIO_MANAGER_OBJECT_NAME:Ljava/lang/String; = "CSoundManager"

.field private static final NGAME_AUDIO_VOLUME_CHANGED_METHOD_NAME:Ljava/lang/String; = "OnVolumeChanged"

.field private static m_Observer:Landroid/database/ContentObserver;

.field private static m_Receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/database/ContentObserver;
    .locals 1

    .line 14
    sget-object v0, Lcom/tencent/ngame/utility/AudioUtility;->m_Observer:Landroid/database/ContentObserver;

    return-object v0
.end method

.method public static registerHeadSetPlug(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/tencent/ngame/utility/AudioUtility;->m_Receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    new-instance v0, Lcom/tencent/ngame/utility/AudioUtility$HeadSetPlugReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/ngame/utility/AudioUtility$HeadSetPlugReceiver;-><init>(Lcom/tencent/ngame/utility/AudioUtility$1;)V

    sput-object v0, Lcom/tencent/ngame/utility/AudioUtility;->m_Receiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    const-string p0, "NGameAudioUtility"

    const-string v0, "register headset plug"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static registerVolumeChange(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/tencent/ngame/utility/AudioUtility;->m_Observer:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance v0, Lcom/tencent/ngame/utility/AudioUtility$VolumeChangeObserver;

    invoke-direct {v0, p0}, Lcom/tencent/ngame/utility/AudioUtility$VolumeChangeObserver;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/tencent/ngame/utility/AudioUtility;->m_Observer:Landroid/database/ContentObserver;

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/ngame/utility/AudioUtility;->m_Observer:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    const-string p0, "NGameAudioUtility"

    const-string v0, "register volume change"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static unregisterHeadSetPlug(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/tencent/ngame/utility/AudioUtility;->m_Receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 117
    sput-object p0, Lcom/tencent/ngame/utility/AudioUtility;->m_Receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static unregisterVolumeChange(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/tencent/ngame/utility/AudioUtility;->m_Observer:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/tencent/ngame/utility/AudioUtility;->m_Observer:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p0, 0x0

    .line 95
    sput-object p0, Lcom/tencent/ngame/utility/AudioUtility;->m_Observer:Landroid/database/ContentObserver;

    return-void
.end method
