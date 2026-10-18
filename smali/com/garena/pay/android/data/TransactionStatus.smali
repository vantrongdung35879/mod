.class public final enum Lcom/garena/pay/android/data/TransactionStatus;
.super Ljava/lang/Enum;
.source "TransactionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/garena/pay/android/data/TransactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/garena/pay/android/data/TransactionStatus;

.field public static final enum CLOSED:Lcom/garena/pay/android/data/TransactionStatus;

.field public static final enum CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

.field public static final enum CREATED:Lcom/garena/pay/android/data/TransactionStatus;

.field public static final enum OPENED:Lcom/garena/pay/android/data/TransactionStatus;

.field public static final enum OPENING:Lcom/garena/pay/android/data/TransactionStatus;

.field public static final enum PROCESSED:Lcom/garena/pay/android/data/TransactionStatus;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/garena/pay/android/data/TransactionStatus;
    .locals 3

    const/4 v0, 0x6

    .line 19
    new-array v0, v0, [Lcom/garena/pay/android/data/TransactionStatus;

    sget-object v1, Lcom/garena/pay/android/data/TransactionStatus;->CREATED:Lcom/garena/pay/android/data/TransactionStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/garena/pay/android/data/TransactionStatus;->OPENING:Lcom/garena/pay/android/data/TransactionStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/garena/pay/android/data/TransactionStatus;->OPENED:Lcom/garena/pay/android/data/TransactionStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/garena/pay/android/data/TransactionStatus;->PROCESSED:Lcom/garena/pay/android/data/TransactionStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED:Lcom/garena/pay/android/data/TransactionStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/garena/pay/android/data/TransactionStatus;

    const/16 v1, 0x1771

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CREATED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/garena/pay/android/data/TransactionStatus;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/garena/pay/android/data/TransactionStatus;->CREATED:Lcom/garena/pay/android/data/TransactionStatus;

    .line 22
    new-instance v0, Lcom/garena/pay/android/data/TransactionStatus;

    const/16 v1, 0x1772

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OPENING"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/garena/pay/android/data/TransactionStatus;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/garena/pay/android/data/TransactionStatus;->OPENING:Lcom/garena/pay/android/data/TransactionStatus;

    .line 24
    new-instance v0, Lcom/garena/pay/android/data/TransactionStatus;

    const/16 v1, 0x1773

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OPENED"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/garena/pay/android/data/TransactionStatus;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/garena/pay/android/data/TransactionStatus;->OPENED:Lcom/garena/pay/android/data/TransactionStatus;

    .line 26
    new-instance v0, Lcom/garena/pay/android/data/TransactionStatus;

    const/16 v1, 0x1774

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROCESSED"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/garena/pay/android/data/TransactionStatus;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/garena/pay/android/data/TransactionStatus;->PROCESSED:Lcom/garena/pay/android/data/TransactionStatus;

    .line 28
    new-instance v0, Lcom/garena/pay/android/data/TransactionStatus;

    const/16 v1, 0x1775

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CLOSED"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/garena/pay/android/data/TransactionStatus;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED:Lcom/garena/pay/android/data/TransactionStatus;

    .line 30
    new-instance v0, Lcom/garena/pay/android/data/TransactionStatus;

    const/16 v1, 0x1776

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CLOSED_WITH_ERROR"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/garena/pay/android/data/TransactionStatus;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    .line 19
    invoke-static {}, Lcom/garena/pay/android/data/TransactionStatus;->$values()[Lcom/garena/pay/android/data/TransactionStatus;

    move-result-object v0

    sput-object v0, Lcom/garena/pay/android/data/TransactionStatus;->$VALUES:[Lcom/garena/pay/android/data/TransactionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/garena/pay/android/data/TransactionStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/garena/pay/android/data/TransactionStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 19
    const-class v0, Lcom/garena/pay/android/data/TransactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/garena/pay/android/data/TransactionStatus;

    return-object p0
.end method

.method public static values()[Lcom/garena/pay/android/data/TransactionStatus;
    .locals 1

    .line 19
    sget-object v0, Lcom/garena/pay/android/data/TransactionStatus;->$VALUES:[Lcom/garena/pay/android/data/TransactionStatus;

    invoke-virtual {v0}, [Lcom/garena/pay/android/data/TransactionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/garena/pay/android/data/TransactionStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Integer;
    .locals 1

    .line 39
    iget v0, p0, Lcom/garena/pay/android/data/TransactionStatus;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
