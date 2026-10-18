.class Lcom/beetalk/sdk/GGPlatform$4;
.super Lcom/beetalk/sdk/ndk/WakeupRet;
.source "GGPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGPlatform;->GGParseWakeUpNotify(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$WakeupNotifyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 1020
    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$4;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/beetalk/sdk/ndk/WakeupRet;-><init>()V

    if-eqz p1, :cond_0

    .line 1022
    const-string v0, "com.garena.msdk.game_launch_open_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/GGPlatform$4;->openId:Ljava/lang/String;

    .line 1023
    const-string v0, "com.garena.msdk.game_launch_media_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/GGPlatform$4;->mediaTag:Ljava/lang/String;

    .line 1024
    const-string v0, "com.garena.msdk.game_launch_open_id_source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$4;->fromOpenId:Ljava/lang/String;

    :cond_0
    return-void
.end method
