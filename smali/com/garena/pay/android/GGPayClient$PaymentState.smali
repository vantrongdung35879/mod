.class final enum Lcom/garena/pay/android/GGPayClient$PaymentState;
.super Ljava/lang/Enum;
.source "GGPayClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/GGPayClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PaymentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/garena/pay/android/GGPayClient$PaymentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/garena/pay/android/GGPayClient$PaymentState;

.field public static final enum CHOOSE_CHANNEL:Lcom/garena/pay/android/GGPayClient$PaymentState;

.field public static final enum CHOOSE_ITEM:Lcom/garena/pay/android/GGPayClient$PaymentState;

.field public static final enum DONE:Lcom/garena/pay/android/GGPayClient$PaymentState;

.field public static final enum INIT:Lcom/garena/pay/android/GGPayClient$PaymentState;

.field public static final enum READY_TO_PAY:Lcom/garena/pay/android/GGPayClient$PaymentState;


# instance fields
.field private final step:I


# direct methods
.method private static synthetic $values()[Lcom/garena/pay/android/GGPayClient$PaymentState;
    .locals 3

    const/4 v0, 0x5

    .line 372
    new-array v0, v0, [Lcom/garena/pay/android/GGPayClient$PaymentState;

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->INIT:Lcom/garena/pay/android/GGPayClient$PaymentState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->CHOOSE_CHANNEL:Lcom/garena/pay/android/GGPayClient$PaymentState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->CHOOSE_ITEM:Lcom/garena/pay/android/GGPayClient$PaymentState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->READY_TO_PAY:Lcom/garena/pay/android/GGPayClient$PaymentState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->DONE:Lcom/garena/pay/android/GGPayClient$PaymentState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 373
    new-instance v0, Lcom/garena/pay/android/GGPayClient$PaymentState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/garena/pay/android/GGPayClient$PaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->INIT:Lcom/garena/pay/android/GGPayClient$PaymentState;

    .line 374
    new-instance v0, Lcom/garena/pay/android/GGPayClient$PaymentState;

    const-string v1, "CHOOSE_CHANNEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/garena/pay/android/GGPayClient$PaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->CHOOSE_CHANNEL:Lcom/garena/pay/android/GGPayClient$PaymentState;

    .line 375
    new-instance v0, Lcom/garena/pay/android/GGPayClient$PaymentState;

    const-string v1, "CHOOSE_ITEM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/garena/pay/android/GGPayClient$PaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->CHOOSE_ITEM:Lcom/garena/pay/android/GGPayClient$PaymentState;

    .line 376
    new-instance v0, Lcom/garena/pay/android/GGPayClient$PaymentState;

    const-string v1, "READY_TO_PAY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/garena/pay/android/GGPayClient$PaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->READY_TO_PAY:Lcom/garena/pay/android/GGPayClient$PaymentState;

    .line 377
    new-instance v0, Lcom/garena/pay/android/GGPayClient$PaymentState;

    const-string v1, "DONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/garena/pay/android/GGPayClient$PaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->DONE:Lcom/garena/pay/android/GGPayClient$PaymentState;

    .line 372
    invoke-static {}, Lcom/garena/pay/android/GGPayClient$PaymentState;->$values()[Lcom/garena/pay/android/GGPayClient$PaymentState;

    move-result-object v0

    sput-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->$VALUES:[Lcom/garena/pay/android/GGPayClient$PaymentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
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
            "(I)V"
        }
    .end annotation

    .line 381
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 382
    iput p3, p0, Lcom/garena/pay/android/GGPayClient$PaymentState;->step:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/garena/pay/android/GGPayClient$PaymentState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 372
    const-class v0, Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/garena/pay/android/GGPayClient$PaymentState;

    return-object p0
.end method

.method public static values()[Lcom/garena/pay/android/GGPayClient$PaymentState;
    .locals 1

    .line 372
    sget-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->$VALUES:[Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-virtual {v0}, [Lcom/garena/pay/android/GGPayClient$PaymentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/garena/pay/android/GGPayClient$PaymentState;

    return-object v0
.end method


# virtual methods
.method public getStep()I
    .locals 1

    .line 386
    iget v0, p0, Lcom/garena/pay/android/GGPayClient$PaymentState;->step:I

    return v0
.end method

.method public previousStep()Lcom/garena/pay/android/GGPayClient$PaymentState;
    .locals 1

    .line 399
    sget-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->INIT:Lcom/garena/pay/android/GGPayClient$PaymentState;

    if-ne p0, v0, :cond_0

    return-object v0

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayClient$PaymentState;->getStep()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/garena/pay/android/GGPayClient$PaymentState;->stateOfValue(I)Lcom/garena/pay/android/GGPayClient$PaymentState;

    move-result-object v0

    return-object v0
.end method

.method public stateOfValue(I)Lcom/garena/pay/android/GGPayClient$PaymentState;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 391
    invoke-static {}, Lcom/garena/pay/android/GGPayClient$PaymentState;->values()[Lcom/garena/pay/android/GGPayClient$PaymentState;

    move-result-object v0

    .line 392
    aget-object p1, v0, p1

    return-object p1

    .line 394
    :cond_0
    sget-object p1, Lcom/garena/pay/android/GGPayClient$PaymentState;->DONE:Lcom/garena/pay/android/GGPayClient$PaymentState;

    return-object p1
.end method
