.class public final enum Lcom/tencent/mna/base/utils/e$a;
.super Ljava/lang/Enum;
.source "PhoneUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/mna/base/utils/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARM64_V8A:Lcom/tencent/mna/base/utils/e$a;

.field public static final enum ARMEABI:Lcom/tencent/mna/base/utils/e$a;

.field public static final enum ARMEABI_V7A:Lcom/tencent/mna/base/utils/e$a;

.field public static final enum MIPS:Lcom/tencent/mna/base/utils/e$a;

.field public static final enum MIPS64:Lcom/tencent/mna/base/utils/e$a;

.field public static final enum UNKNOWN:Lcom/tencent/mna/base/utils/e$a;

.field public static final enum X86:Lcom/tencent/mna/base/utils/e$a;

.field public static final enum X86_64:Lcom/tencent/mna/base/utils/e$a;

.field private static final synthetic a:[Lcom/tencent/mna/base/utils/e$a;


# instance fields
.field private abiName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/tencent/mna/base/utils/e$a;

    const-string v1, "armeabi"

    const-string v2, "ARMEABI"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/mna/base/utils/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/mna/base/utils/e$a;->ARMEABI:Lcom/tencent/mna/base/utils/e$a;

    new-instance v1, Lcom/tencent/mna/base/utils/e$a;

    const-string v2, "armeabi-v7a"

    const-string v4, "ARMEABI_V7A"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/tencent/mna/base/utils/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/mna/base/utils/e$a;->ARMEABI_V7A:Lcom/tencent/mna/base/utils/e$a;

    new-instance v2, Lcom/tencent/mna/base/utils/e$a;

    const-string v4, "arm64-v8a"

    const-string v6, "ARM64_V8A"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/tencent/mna/base/utils/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tencent/mna/base/utils/e$a;->ARM64_V8A:Lcom/tencent/mna/base/utils/e$a;

    .line 2
    new-instance v4, Lcom/tencent/mna/base/utils/e$a;

    const-string/jumbo v6, "x86"

    const-string v8, "X86"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/tencent/mna/base/utils/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/tencent/mna/base/utils/e$a;->X86:Lcom/tencent/mna/base/utils/e$a;

    new-instance v6, Lcom/tencent/mna/base/utils/e$a;

    const-string/jumbo v8, "x86_64"

    const-string v10, "X86_64"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/tencent/mna/base/utils/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/tencent/mna/base/utils/e$a;->X86_64:Lcom/tencent/mna/base/utils/e$a;

    .line 3
    new-instance v8, Lcom/tencent/mna/base/utils/e$a;

    const-string v10, "mips"

    const-string v12, "MIPS"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/tencent/mna/base/utils/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/tencent/mna/base/utils/e$a;->MIPS:Lcom/tencent/mna/base/utils/e$a;

    new-instance v10, Lcom/tencent/mna/base/utils/e$a;

    const-string v12, "mips64"

    const-string v14, "MIPS64"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/tencent/mna/base/utils/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/tencent/mna/base/utils/e$a;->MIPS64:Lcom/tencent/mna/base/utils/e$a;

    .line 4
    new-instance v12, Lcom/tencent/mna/base/utils/e$a;

    const-string/jumbo v14, "unknown"

    const-string v15, "UNKNOWN"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/tencent/mna/base/utils/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/tencent/mna/base/utils/e$a;->UNKNOWN:Lcom/tencent/mna/base/utils/e$a;

    const/16 v14, 0x8

    .line 5
    new-array v14, v14, [Lcom/tencent/mna/base/utils/e$a;

    aput-object v0, v14, v3

    aput-object v1, v14, v5

    aput-object v2, v14, v7

    aput-object v4, v14, v9

    aput-object v6, v14, v11

    const/4 v0, 0x5

    aput-object v8, v14, v0

    const/4 v0, 0x6

    aput-object v10, v14, v0

    aput-object v12, v14, v13

    sput-object v14, Lcom/tencent/mna/base/utils/e$a;->a:[Lcom/tencent/mna/base/utils/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Lcom/tencent/mna/base/utils/e$a;->abiName:Ljava/lang/String;

    return-void
.end method

.method public static getAbi(Ljava/lang/String;)Lcom/tencent/mna/base/utils/e$a;
    .locals 6

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/tencent/mna/base/utils/e$a;->UNKNOWN:Lcom/tencent/mna/base/utils/e$a;

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/utils/e$a;->values()[Lcom/tencent/mna/base/utils/e$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Lcom/tencent/mna/base/utils/e$a;->getAbiName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    sget-object p0, Lcom/tencent/mna/base/utils/e$a;->UNKNOWN:Lcom/tencent/mna/base/utils/e$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mna/base/utils/e$a;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/mna/base/utils/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/mna/base/utils/e$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/mna/base/utils/e$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/base/utils/e$a;->a:[Lcom/tencent/mna/base/utils/e$a;

    invoke-virtual {v0}, [Lcom/tencent/mna/base/utils/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mna/base/utils/e$a;

    return-object v0
.end method


# virtual methods
.method public getAbiName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/base/utils/e$a;->abiName:Ljava/lang/String;

    return-object v0
.end method

.method public isLP64()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/base/utils/e$a;->ARM64_V8A:Lcom/tencent/mna/base/utils/e$a;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/mna/base/utils/e$a;->X86_64:Lcom/tencent/mna/base/utils/e$a;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/mna/base/utils/e$a;->MIPS64:Lcom/tencent/mna/base/utils/e$a;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
