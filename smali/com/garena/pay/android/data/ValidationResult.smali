.class public Lcom/garena/pay/android/data/ValidationResult;
.super Ljava/lang/Object;
.source "ValidationResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/pay/android/data/ValidationResult$ResultCode;
    }
.end annotation


# instance fields
.field public errorMessage:Ljava/lang/String;

.field public resultCode:Lcom/garena/pay/android/data/ValidationResult$ResultCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createError(Ljava/lang/String;)Lcom/garena/pay/android/data/ValidationResult;
    .locals 1

    .line 34
    new-instance v0, Lcom/garena/pay/android/data/ValidationResult;

    invoke-direct {v0}, Lcom/garena/pay/android/data/ValidationResult;-><init>()V

    .line 35
    iput-object p0, v0, Lcom/garena/pay/android/data/ValidationResult;->errorMessage:Ljava/lang/String;

    .line 36
    sget-object p0, Lcom/garena/pay/android/data/ValidationResult$ResultCode;->ERROR:Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    iput-object p0, v0, Lcom/garena/pay/android/data/ValidationResult;->resultCode:Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    return-object v0
.end method
