.class Lcom/tencent/ngame/utility/AudioUtility$VolumeChangeObserver;
.super Landroid/database/ContentObserver;
.source "AudioUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ngame/utility/AudioUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeChangeObserver"
.end annotation


# instance fields
.field private m_AudioManager:Landroid/media/AudioManager;

.field private m_Volume:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 21
    iput-object v0, p0, Lcom/tencent/ngame/utility/AudioUtility$VolumeChangeObserver;->m_AudioManager:Landroid/media/AudioManager;

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/tencent/ngame/utility/AudioUtility$VolumeChangeObserver;->m_Volume:I

    .line 26
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/tencent/ngame/utility/AudioUtility$VolumeChangeObserver;->m_AudioManager:Landroid/media/AudioManager;

    .line 27
    invoke-virtual {p0}, Lcom/tencent/ngame/utility/AudioUtility$VolumeChangeObserver;->measure()V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public measure()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/tencent/ngame/utility/AudioUtility$VolumeChangeObserver;->m_AudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 45
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 46
    iget v1, p0, Lcom/tencent/ngame/utility/AudioUtility$VolumeChangeObserver;->m_Volume:I

    if-ne v0, v1, :cond_1

    return-void

    .line 50
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v2, "CSoundManager"

    const-string v3, "OnVolumeChanged"

    invoke-static {v2, v3, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput v0, p0, Lcom/tencent/ngame/utility/AudioUtility$VolumeChangeObserver;->m_Volume:I

    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfChange"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/tencent/ngame/utility/AudioUtility$VolumeChangeObserver;->measure()V

    return-void
.end method
