.class public Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkChangeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;


# direct methods
.method public constructor <init>(Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;->this$0:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 130
    const-string p1, "NetworkChangeHelper"

    const-string v0, "network available"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 143
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    const/16 p1, 0x10

    .line 144
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const-string v0, "NetworkChangeHelper"

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 145
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string p1, "network available for wifi"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p1, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;->this$0:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->access$000(Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 148
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const-string v1, "network available for mobile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;->this$0:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;

    invoke-static {v1, p1}, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->access$000(Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;I)V

    goto :goto_0

    .line 152
    :cond_1
    const-string p1, "network available for other"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p1, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;->this$0:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->access$000(Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;I)V

    :cond_2
    :goto_0
    const/16 p1, 0xc

    .line 157
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 158
    const-string p1, "internet online"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 137
    const-string p1, "NetworkChangeHelper"

    const-string v0, "network unavailable"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p1, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;->this$0:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->access$000(Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;I)V

    return-void
.end method
