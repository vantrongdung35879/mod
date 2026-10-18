.class public final Lcom/tencent/beacon/event/open/EventResult;
.super Ljava/lang/Object;
.source "EventResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/event/open/EventResult$a;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_LOGID_NOT_INIT:I = 0x6b

.field public static final ERROR_CODE_NAME_NULL:I = 0x6a

.field public static final ERROR_CODE_NOT_ENABLE:I = 0x66

.field public static final ERROR_CODE_OFFER_FAIL:I = 0x67

.field public static final ERROR_CODE_OTHER:I = 0xc7

.field public static final ERROR_CODE_PREVENT:I = 0x64

.field public static final ERROR_CODE_SAMPLE:I = 0x65

.field public static final ERROR_CODE_SAMPLE_BY_USER:I = 0x6c

.field public static final ERROR_CODE_SUCCESS:I = 0x0

.field public static final ERROR_PARAMS_LONG:I = 0x69


# instance fields
.field public errMsg:Ljava/lang/String;

.field public errorCode:I

.field public eventID:J


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/beacon/event/open/EventResult;->errorCode:I

    .line 3
    iput-wide p2, p0, Lcom/tencent/beacon/event/open/EventResult;->eventID:J

    .line 4
    iput-object p4, p0, Lcom/tencent/beacon/event/open/EventResult;->errMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/beacon/event/open/EventResult;->errorCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
