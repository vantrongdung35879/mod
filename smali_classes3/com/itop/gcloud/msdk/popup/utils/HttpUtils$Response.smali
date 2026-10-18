.class public Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final HTTP_OK:I = 0xc8


# instance fields
.field public content:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput p1, p0, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->status:I

    .line 202
    iput-object p2, p0, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->content:Ljava/lang/String;

    return-void
.end method
