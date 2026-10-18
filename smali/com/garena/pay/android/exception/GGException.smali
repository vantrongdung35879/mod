.class public Lcom/garena/pay/android/exception/GGException;
.super Ljava/lang/Exception;
.source "GGException.java"


# instance fields
.field private final errorMessage:Ljava/lang/String;

.field private final extraMessage:Ljava/lang/String;

.field private final ggErrorCode:Lcom/garena/pay/android/GGErrorCode;


# direct methods
.method public constructor <init>(Lcom/garena/pay/android/GGErrorCode;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/garena/pay/android/exception/GGException;->ggErrorCode:Lcom/garena/pay/android/GGErrorCode;

    .line 49
    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/garena/pay/android/exception/GGException;->errorMessage:Ljava/lang/String;

    .line 50
    const-string p1, ""

    iput-object p1, p0, Lcom/garena/pay/android/exception/GGException;->extraMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/garena/pay/android/exception/GGException;->ggErrorCode:Lcom/garena/pay/android/GGErrorCode;

    .line 43
    iput-object p2, p0, Lcom/garena/pay/android/exception/GGException;->errorMessage:Ljava/lang/String;

    .line 44
    const-string p1, ""

    iput-object p1, p0, Lcom/garena/pay/android/exception/GGException;->extraMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/garena/pay/android/exception/GGException;->ggErrorCode:Lcom/garena/pay/android/GGErrorCode;

    .line 37
    iput-object p2, p0, Lcom/garena/pay/android/exception/GGException;->errorMessage:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/garena/pay/android/exception/GGException;->extraMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/garena/pay/android/GGErrorCode;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/garena/pay/android/exception/GGException;->ggErrorCode:Lcom/garena/pay/android/GGErrorCode;

    return-object v0
.end method

.method public getExtraMessage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/garena/pay/android/exception/GGException;->extraMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/garena/pay/android/exception/GGException;->errorMessage:Ljava/lang/String;

    return-object v0
.end method
