.class public Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;
.super Ljava/lang/Object;
.source "LocalTaskResult.java"


# instance fields
.field public errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

.field public errorDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    .line 18
    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    return-void
.end method
