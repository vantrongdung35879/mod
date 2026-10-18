.class Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;
.super Landroid/os/Handler;
.source "LocalNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/core/push/LocalNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationHandler"
.end annotation


# instance fields
.field mManager:Lcom/intlgame/core/push/LocalNotificationManager;


# direct methods
.method private constructor <init>(Lcom/intlgame/core/push/LocalNotificationManager;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;->mManager:Lcom/intlgame/core/push/LocalNotificationManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/core/push/LocalNotificationManager;Lcom/intlgame/core/push/LocalNotificationManager$1;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;-><init>(Lcom/intlgame/core/push/LocalNotificationManager;)V

    return-void
.end method

.method private handleAddNotification(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleAddNotification bundle "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 114
    :try_start_0
    const-string v0, "com.intlgame.core.push.MessageKeyNotification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    new-instance v0, Lcom/intlgame/api/push/INTLLocalNotification;

    invoke-direct {v0, p1}, Lcom/intlgame/api/push/INTLLocalNotification;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;->mManager:Lcom/intlgame/core/push/LocalNotificationManager;

    invoke-static {p1, v0}, Lcom/intlgame/core/push/LocalNotificationManager;->access$100(Lcom/intlgame/core/push/LocalNotificationManager;Lcom/intlgame/api/push/INTLLocalNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleAddNotification error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationHandler handle Message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    const-string p1, "NotificationHandler handle Message MESSAGE_CLEAR_NOTIFICATION"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;->mManager:Lcom/intlgame/core/push/LocalNotificationManager;

    invoke-static {p1}, Lcom/intlgame/core/push/LocalNotificationManager;->access$000(Lcom/intlgame/core/push/LocalNotificationManager;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    .line 93
    const-string p1, "NotificationHandler handle add notification Message with null bundle"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    return-void

    .line 96
    :cond_2
    invoke-direct {p0, p1}, Lcom/intlgame/core/push/LocalNotificationManager$NotificationHandler;->handleAddNotification(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
