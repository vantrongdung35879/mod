.class public Lcom/tencent/gcloud/msdk/common/GarenaConst$Recall;
.super Ljava/lang/Object;
.source "GarenaConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/common/GarenaConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recall"
.end annotation


# static fields
.field public static final EXTEND_METHOD_GET_RECALL_CONFIG:Ljava/lang/String; = "getGarenaRecallConfig"

.field public static final EXTEND_METHOD_SET_RECALL_CONFIG:Ljava/lang/String; = "setGarenaRecallConfig"

.field public static final LOG_TAG:Ljava/lang/String; = "[GarenaRecall] "

.field public static final SP_KEY_RECALL_ENABLE:Ljava/lang/String; = "recall_enable"

.field public static final SP_KEY_RECALL_SUCCESS_FLAG:Ljava/lang/String; = "recall_success_flag"

.field public static final SP_KEY_SAVE_TOKEN_ENABLE:Ljava/lang/String; = "save_token_enable"

.field public static final SP_NAME:Ljava/lang/String; = "msdk_garena_recall"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
