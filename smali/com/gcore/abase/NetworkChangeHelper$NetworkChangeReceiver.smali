.class public Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcore/abase/NetworkChangeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gcore/abase/NetworkChangeHelper;


# direct methods
.method public constructor <init>(Lcom/gcore/abase/NetworkChangeHelper;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;->this$0:Lcom/gcore/abase/NetworkChangeHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 165
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 166
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 167
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    const/4 v0, 0x1

    const-string v1, "NetworkChangeHelper"

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Receive Network State, Other:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;->this$0:Lcom/gcore/abase/NetworkChangeHelper;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/gcore/abase/NetworkChangeHelper;->access$000(Lcom/gcore/abase/NetworkChangeHelper;I)V

    goto :goto_1

    .line 183
    :cond_1
    const-string p1, "Receive Network State TYPE_WIFI"

    invoke-static {v1, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;->this$0:Lcom/gcore/abase/NetworkChangeHelper;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/gcore/abase/NetworkChangeHelper;->access$000(Lcom/gcore/abase/NetworkChangeHelper;I)V

    goto :goto_1

    .line 177
    :cond_2
    const-string p1, "Receive Network State TYPE_MOBILE"

    invoke-static {v1, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;->this$0:Lcom/gcore/abase/NetworkChangeHelper;

    invoke-static {p1, v0}, Lcom/gcore/abase/NetworkChangeHelper;->access$000(Lcom/gcore/abase/NetworkChangeHelper;I)V

    goto :goto_1

    .line 169
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;->this$0:Lcom/gcore/abase/NetworkChangeHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gcore/abase/NetworkChangeHelper;->access$000(Lcom/gcore/abase/NetworkChangeHelper;I)V

    :goto_1
    return-void
.end method
