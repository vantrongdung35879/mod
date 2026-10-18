.class public final enum Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/toolkit/util/DateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DatePattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

.field public static final enum PATTERN1:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

.field public static final enum PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

.field public static final enum PATTERN3:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;


# instance fields
.field private format:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN1:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN3:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    const/4 v1, 0x0

    const-string/jumbo v2, "yyyy_MM_dd_HH_mm_ss"

    const-string v3, "PATTERN1"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN1:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    .line 2
    new-instance v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    const/4 v1, 0x1

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    const-string v3, "PATTERN2"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    const/4 v1, 0x2

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    const-string v3, "PATTERN3"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN3:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->$values()[Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->$VALUES:[Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

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

    .line 2
    iput-object p3, p0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->format:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;
    .locals 1

    .line 1
    const-class v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->$VALUES:[Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->format:Ljava/lang/String;

    return-object v0
.end method
