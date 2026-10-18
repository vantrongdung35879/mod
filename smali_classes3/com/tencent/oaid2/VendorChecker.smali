.class public abstract enum Lcom/tencent/oaid2/VendorChecker;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/oaid2/VendorChecker;",
        ">;"
    }
.end annotation


# static fields
.field public static final BRAND:Ljava/lang/String;

.field public static final enum HONOR_TYPE:Lcom/tencent/oaid2/VendorChecker;

.field public static final enum HS_TYPE:Lcom/tencent/oaid2/VendorChecker;

.field public static final enum HW_TYPE:Lcom/tencent/oaid2/VendorChecker;

.field public static final enum LX_TYPE:Lcom/tencent/oaid2/VendorChecker;

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final enum MSA_TYPE:Lcom/tencent/oaid2/VendorChecker;

.field public static final enum MZ_TYPE:Lcom/tencent/oaid2/VendorChecker;

.field public static final enum NB_TYPE:Lcom/tencent/oaid2/VendorChecker;

.field public static final enum OP_TYPE:Lcom/tencent/oaid2/VendorChecker;

.field public static final OS_VERSION:I

.field public static final enum SX_TYPE:Lcom/tencent/oaid2/VendorChecker;

.field public static final enum UNSUPPORTED:Lcom/tencent/oaid2/VendorChecker;

.field public static final enum VV_TYPE:Lcom/tencent/oaid2/VendorChecker;

.field public static final enum XM_TYPE:Lcom/tencent/oaid2/VendorChecker;

.field public static final synthetic a:[Lcom/tencent/oaid2/VendorChecker;


# instance fields
.field public final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/tencent/oaid2/VendorChecker$1;

    invoke-direct {v0}, Lcom/tencent/oaid2/VendorChecker$1;-><init>()V

    sput-object v0, Lcom/tencent/oaid2/VendorChecker;->UNSUPPORTED:Lcom/tencent/oaid2/VendorChecker;

    .line 9
    new-instance v1, Lcom/tencent/oaid2/VendorChecker$2;

    invoke-direct {v1}, Lcom/tencent/oaid2/VendorChecker$2;-><init>()V

    sput-object v1, Lcom/tencent/oaid2/VendorChecker;->XM_TYPE:Lcom/tencent/oaid2/VendorChecker;

    .line 23
    new-instance v2, Lcom/tencent/oaid2/VendorChecker$3;

    invoke-direct {v2}, Lcom/tencent/oaid2/VendorChecker$3;-><init>()V

    sput-object v2, Lcom/tencent/oaid2/VendorChecker;->VV_TYPE:Lcom/tencent/oaid2/VendorChecker;

    .line 32
    new-instance v3, Lcom/tencent/oaid2/VendorChecker$4;

    invoke-direct {v3}, Lcom/tencent/oaid2/VendorChecker$4;-><init>()V

    sput-object v3, Lcom/tencent/oaid2/VendorChecker;->HW_TYPE:Lcom/tencent/oaid2/VendorChecker;

    .line 50
    new-instance v4, Lcom/tencent/oaid2/VendorChecker$5;

    invoke-direct {v4}, Lcom/tencent/oaid2/VendorChecker$5;-><init>()V

    sput-object v4, Lcom/tencent/oaid2/VendorChecker;->OP_TYPE:Lcom/tencent/oaid2/VendorChecker;

    .line 62
    new-instance v5, Lcom/tencent/oaid2/VendorChecker$6;

    invoke-direct {v5}, Lcom/tencent/oaid2/VendorChecker$6;-><init>()V

    sput-object v5, Lcom/tencent/oaid2/VendorChecker;->LX_TYPE:Lcom/tencent/oaid2/VendorChecker;

    .line 75
    new-instance v6, Lcom/tencent/oaid2/VendorChecker$7;

    invoke-direct {v6}, Lcom/tencent/oaid2/VendorChecker$7;-><init>()V

    sput-object v6, Lcom/tencent/oaid2/VendorChecker;->HS_TYPE:Lcom/tencent/oaid2/VendorChecker;

    .line 83
    new-instance v7, Lcom/tencent/oaid2/VendorChecker$8;

    invoke-direct {v7}, Lcom/tencent/oaid2/VendorChecker$8;-><init>()V

    sput-object v7, Lcom/tencent/oaid2/VendorChecker;->SX_TYPE:Lcom/tencent/oaid2/VendorChecker;

    .line 91
    new-instance v8, Lcom/tencent/oaid2/VendorChecker$9;

    invoke-direct {v8}, Lcom/tencent/oaid2/VendorChecker$9;-><init>()V

    sput-object v8, Lcom/tencent/oaid2/VendorChecker;->MZ_TYPE:Lcom/tencent/oaid2/VendorChecker;

    .line 103
    new-instance v9, Lcom/tencent/oaid2/VendorChecker$10;

    invoke-direct {v9}, Lcom/tencent/oaid2/VendorChecker$10;-><init>()V

    sput-object v9, Lcom/tencent/oaid2/VendorChecker;->NB_TYPE:Lcom/tencent/oaid2/VendorChecker;

    .line 111
    new-instance v10, Lcom/tencent/oaid2/VendorChecker$11;

    invoke-direct {v10}, Lcom/tencent/oaid2/VendorChecker$11;-><init>()V

    sput-object v10, Lcom/tencent/oaid2/VendorChecker;->MSA_TYPE:Lcom/tencent/oaid2/VendorChecker;

    .line 126
    new-instance v11, Lcom/tencent/oaid2/VendorChecker$12;

    invoke-direct {v11}, Lcom/tencent/oaid2/VendorChecker$12;-><init>()V

    sput-object v11, Lcom/tencent/oaid2/VendorChecker;->HONOR_TYPE:Lcom/tencent/oaid2/VendorChecker;

    const/16 v12, 0xc

    .line 127
    new-array v12, v12, [Lcom/tencent/oaid2/VendorChecker;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v2, v12, v0

    const/4 v0, 0x3

    aput-object v3, v12, v0

    const/4 v0, 0x4

    aput-object v4, v12, v0

    const/4 v0, 0x5

    aput-object v5, v12, v0

    const/4 v0, 0x6

    aput-object v6, v12, v0

    const/4 v0, 0x7

    aput-object v7, v12, v0

    const/16 v0, 0x8

    aput-object v8, v12, v0

    const/16 v0, 0x9

    aput-object v9, v12, v0

    const/16 v0, 0xa

    aput-object v10, v12, v0

    const/16 v0, 0xb

    aput-object v11, v12, v0

    .line 128
    sput-object v12, Lcom/tencent/oaid2/VendorChecker;->a:[Lcom/tencent/oaid2/VendorChecker;

    .line 278
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    sput-object v0, Lcom/tencent/oaid2/VendorChecker;->BRAND:Ljava/lang/String;

    .line 279
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    sput-object v2, Lcom/tencent/oaid2/VendorChecker;->MANUFACTURER:Ljava/lang/String;

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/tencent/oaid2/VendorChecker;->OS_VERSION:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tencent/oaid2/VendorChecker;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/oaid2/VendorChecker;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/oaid2/VendorChecker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/oaid2/VendorChecker;

    return-object p0
.end method

.method public static values()[Lcom/tencent/oaid2/VendorChecker;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/oaid2/VendorChecker;->a:[Lcom/tencent/oaid2/VendorChecker;

    invoke-virtual {v0}, [Lcom/tencent/oaid2/VendorChecker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/oaid2/VendorChecker;

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method
