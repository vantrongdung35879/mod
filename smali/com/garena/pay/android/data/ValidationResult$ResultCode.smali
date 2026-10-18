.class public final enum Lcom/garena/pay/android/data/ValidationResult$ResultCode;
.super Ljava/lang/Enum;
.source "ValidationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/data/ValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/garena/pay/android/data/ValidationResult$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/garena/pay/android/data/ValidationResult$ResultCode;

.field public static final enum ERROR:Lcom/garena/pay/android/data/ValidationResult$ResultCode;

.field public static final enum SUCCESS:Lcom/garena/pay/android/data/ValidationResult$ResultCode;


# direct methods
.method private static synthetic $values()[Lcom/garena/pay/android/data/ValidationResult$ResultCode;
    .locals 3

    const/4 v0, 0x2

    .line 28
    new-array v0, v0, [Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    sget-object v1, Lcom/garena/pay/android/data/ValidationResult$ResultCode;->SUCCESS:Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/garena/pay/android/data/ValidationResult$ResultCode;->ERROR:Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/garena/pay/android/data/ValidationResult$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/garena/pay/android/data/ValidationResult$ResultCode;->SUCCESS:Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    .line 30
    new-instance v0, Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/garena/pay/android/data/ValidationResult$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/garena/pay/android/data/ValidationResult$ResultCode;->ERROR:Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    .line 28
    invoke-static {}, Lcom/garena/pay/android/data/ValidationResult$ResultCode;->$values()[Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    move-result-object v0

    sput-object v0, Lcom/garena/pay/android/data/ValidationResult$ResultCode;->$VALUES:[Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/garena/pay/android/data/ValidationResult$ResultCode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    const-class v0, Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/garena/pay/android/data/ValidationResult$ResultCode;
    .locals 1

    .line 28
    sget-object v0, Lcom/garena/pay/android/data/ValidationResult$ResultCode;->$VALUES:[Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    invoke-virtual {v0}, [Lcom/garena/pay/android/data/ValidationResult$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/garena/pay/android/data/ValidationResult$ResultCode;

    return-object v0
.end method
