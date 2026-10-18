.class public Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkChangeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcore/abase/NetworkChangeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gcore/abase/NetworkChangeHelper;


# direct methods
.method public constructor <init>(Lcom/gcore/abase/NetworkChangeHelper;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;->this$0:Lcom/gcore/abase/NetworkChangeHelper;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 128
    const-string p1, "NetworkChangeHelper"

    const-string v0, "network available"

    invoke-static {p1, v0}, Lcom/gcore/abase/log/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 141
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    const/16 p1, 0x10

    .line 142
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const-string v0, "NetworkChangeHelper"

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 143
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string p1, "network available for wifi"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;->this$0:Lcom/gcore/abase/NetworkChangeHelper;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/gcore/abase/NetworkChangeHelper;->access$000(Lcom/gcore/abase/NetworkChangeHelper;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const-string v1, "network available for mobile"

    invoke-static {v0, v1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;->this$0:Lcom/gcore/abase/NetworkChangeHelper;

    invoke-static {v1, p1}, Lcom/gcore/abase/NetworkChangeHelper;->access$000(Lcom/gcore/abase/NetworkChangeHelper;I)V

    goto :goto_0

    .line 150
    :cond_1
    const-string p1, "network available for other"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;->this$0:Lcom/gcore/abase/NetworkChangeHelper;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/gcore/abase/NetworkChangeHelper;->access$000(Lcom/gcore/abase/NetworkChangeHelper;I)V

    :cond_2
    :goto_0
    const/16 p1, 0xc

    .line 155
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 156
    const-string p1, "internet online"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 135
    const-string p1, "NetworkChangeHelper"

    const-string v0, "network unavailable"

    invoke-static {p1, v0}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;->this$0:Lcom/gcore/abase/NetworkChangeHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gcore/abase/NetworkChangeHelper;->access$000(Lcom/gcore/abase/NetworkChangeHelper;I)V

    return-void
.end method
