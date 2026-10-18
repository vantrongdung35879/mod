.class final enum Lcom/tencent/mna/core/diagnose/c$a;
.super Ljava/lang/Enum;
.source "DiagnoseSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/core/diagnose/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/mna/core/diagnose/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Direct:Lcom/tencent/mna/core/diagnose/c$a;

.field public static final enum Export:Lcom/tencent/mna/core/diagnose/c$a;

.field public static final enum NIC:Lcom/tencent/mna/core/diagnose/c$a;

.field public static final enum Ping:Lcom/tencent/mna/core/diagnose/c$a;

.field public static final enum RouterMacs:Lcom/tencent/mna/core/diagnose/c$a;

.field private static final synthetic a:[Lcom/tencent/mna/core/diagnose/c$a;


# instance fields
.field mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/tencent/mna/core/diagnose/c$a;

    const-string v1, "Ping"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mna/core/diagnose/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mna/core/diagnose/c$a;->Ping:Lcom/tencent/mna/core/diagnose/c$a;

    .line 2
    new-instance v1, Lcom/tencent/mna/core/diagnose/c$a;

    const-string v4, "RouterMacs"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/tencent/mna/core/diagnose/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/mna/core/diagnose/c$a;->RouterMacs:Lcom/tencent/mna/core/diagnose/c$a;

    .line 3
    new-instance v4, Lcom/tencent/mna/core/diagnose/c$a;

    const-string v6, "Export"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/tencent/mna/core/diagnose/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/mna/core/diagnose/c$a;->Export:Lcom/tencent/mna/core/diagnose/c$a;

    .line 4
    new-instance v6, Lcom/tencent/mna/core/diagnose/c$a;

    const/16 v8, 0x8

    const-string v9, "Direct"

    const/4 v10, 0x3

    invoke-direct {v6, v9, v10, v8}, Lcom/tencent/mna/core/diagnose/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tencent/mna/core/diagnose/c$a;->Direct:Lcom/tencent/mna/core/diagnose/c$a;

    .line 5
    new-instance v8, Lcom/tencent/mna/core/diagnose/c$a;

    const-string v9, "NIC"

    const/16 v11, 0x10

    invoke-direct {v8, v9, v7, v11}, Lcom/tencent/mna/core/diagnose/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tencent/mna/core/diagnose/c$a;->NIC:Lcom/tencent/mna/core/diagnose/c$a;

    const/4 v9, 0x5

    .line 6
    new-array v9, v9, [Lcom/tencent/mna/core/diagnose/c$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v10

    aput-object v8, v9, v7

    sput-object v9, Lcom/tencent/mna/core/diagnose/c$a;->a:[Lcom/tencent/mna/core/diagnose/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tencent/mna/core/diagnose/c$a;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mna/core/diagnose/c$a;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/mna/core/diagnose/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/mna/core/diagnose/c$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/mna/core/diagnose/c$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/core/diagnose/c$a;->a:[Lcom/tencent/mna/core/diagnose/c$a;

    invoke-virtual {v0}, [Lcom/tencent/mna/core/diagnose/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mna/core/diagnose/c$a;

    return-object v0
.end method
