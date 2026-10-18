.class public Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;
.super Ljava/lang/Object;
.source "ShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/webview/ShareAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemData"
.end annotation


# instance fields
.field public channel:Ljava/lang/String;

.field isShare:Z

.field shareIconResId:I

.field shareTitleResId:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;->isShare:Z

    .line 112
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;->channel:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;->channel:Ljava/lang/String;

    .line 117
    iput-boolean p2, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;->isShare:Z

    return-void
.end method
