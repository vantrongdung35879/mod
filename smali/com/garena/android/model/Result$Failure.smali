.class public Lcom/garena/android/model/Result$Failure;
.super Lcom/garena/android/model/Result;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/model/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Failure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/garena/android/model/Result<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final error:Ljava/lang/Exception;

.field public final errorCode:Lcom/garena/pay/android/GGErrorCode;

.field public final extra:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/garena/android/model/Result;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/garena/android/model/Result$Failure;->errorCode:Lcom/garena/pay/android/GGErrorCode;

    .line 39
    iput-object p2, p0, Lcom/garena/android/model/Result$Failure;->error:Ljava/lang/Exception;

    .line 40
    const-string p1, ""

    iput-object p1, p0, Lcom/garena/android/model/Result$Failure;->extra:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/garena/android/model/Result;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/garena/android/model/Result$Failure;->errorCode:Lcom/garena/pay/android/GGErrorCode;

    .line 45
    iput-object p2, p0, Lcom/garena/android/model/Result$Failure;->error:Ljava/lang/Exception;

    .line 46
    iput-object p3, p0, Lcom/garena/android/model/Result$Failure;->extra:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isFailed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSucceed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
