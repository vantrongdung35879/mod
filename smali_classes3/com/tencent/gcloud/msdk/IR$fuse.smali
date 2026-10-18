.class public Lcom/tencent/gcloud/msdk/IR$fuse;
.super Ljava/lang/Object;
.source "IR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/IR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "fuse"
.end annotation


# static fields
.field public static final LABEL_APK_V2_SIGN:Ljava/lang/String; = "MSDK_V2_SIGN_ENABLE"

.field public static final LABEL_APK_V3_SIGN:Ljava/lang/String; = "MSDK_V3_SIGN_ENABLE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
