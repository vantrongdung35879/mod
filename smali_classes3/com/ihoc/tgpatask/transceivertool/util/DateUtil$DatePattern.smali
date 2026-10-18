.class public final enum Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;
.super Ljava/lang/Enum;
.source "DateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/util/DateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DatePattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;

.field public static final enum PATTERN2:Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;


# instance fields
.field private format:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;
    .locals 3

    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;

    const/4 v1, 0x0

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    const-string v3, "PATTERN2"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;

    .line 10
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;->$values()[Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;

    move-result-object v0

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;->$VALUES:[Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;->format:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;
    .locals 1

    .line 10
    const-class v0, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;
    .locals 1

    .line 10
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;->$VALUES:[Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;

    invoke-virtual {v0}, [Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/util/DateUtil$DatePattern;->format:Ljava/lang/String;

    return-object v0
.end method
