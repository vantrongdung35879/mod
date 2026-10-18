.class public abstract Lcom/garena/android/model/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/android/model/Result$Failure;,
        Lcom/garena/android/model/Result$Success;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)Lcom/garena/android/model/Result$Failure;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/garena/pay/android/GGErrorCode;",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/garena/android/model/Result$Failure<",
            "TT;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/garena/android/model/Result$Failure;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v1, ""

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/garena/android/model/Result$Failure;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)Lcom/garena/android/model/Result$Failure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/garena/pay/android/GGErrorCode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/garena/android/model/Result$Failure<",
            "TT;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/garena/android/model/Result;->failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)Lcom/garena/android/model/Result$Failure;

    move-result-object p0

    return-object p0
.end method

.method public static failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/garena/android/model/Result$Failure;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/garena/pay/android/GGErrorCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/garena/android/model/Result$Failure<",
            "TT;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/garena/android/model/Result$Failure;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p2}, Lcom/garena/android/model/Result$Failure;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;)Lcom/garena/android/model/Result$Success;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/garena/android/model/Result$Success<",
            "TT;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/garena/android/model/Result$Success;

    invoke-direct {v0, p0}, Lcom/garena/android/model/Result$Success;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getErrorCode()Lcom/garena/pay/android/GGErrorCode;
    .locals 1

    .line 93
    move-object v0, p0

    check-cast v0, Lcom/garena/android/model/Result$Failure;

    .line 94
    iget-object v0, v0, Lcom/garena/android/model/Result$Failure;->errorCode:Lcom/garena/pay/android/GGErrorCode;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 87
    move-object v0, p0

    check-cast v0, Lcom/garena/android/model/Result$Failure;

    .line 88
    iget-object v0, v0, Lcom/garena/android/model/Result$Failure;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public getExtraErrorInfo()Ljava/lang/String;
    .locals 1

    .line 99
    move-object v0, p0

    check-cast v0, Lcom/garena/android/model/Result$Failure;

    .line 100
    iget-object v0, v0, Lcom/garena/android/model/Result$Failure;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isFailed()Z
.end method

.method public abstract isSucceed()Z
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 81
    move-object v0, p0

    check-cast v0, Lcom/garena/android/model/Result$Success;

    .line 82
    iget-object v0, v0, Lcom/garena/android/model/Result$Success;->data:Ljava/lang/Object;

    return-object v0
.end method
