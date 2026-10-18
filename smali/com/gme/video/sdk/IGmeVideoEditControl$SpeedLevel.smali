.class public final enum Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;
.super Ljava/lang/Enum;
.source "IGmeVideoEditControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/IGmeVideoEditControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpeedLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

.field public static final enum FAST:Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

.field public static final enum FASTEST:Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

.field public static final enum NOMAL:Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

.field public static final enum SLOW:Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

.field public static final enum SLOWEST:Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;


# instance fields
.field speed:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 20
    new-instance v0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    const/high16 v1, 0x3f000000    # 0.5f

    const-string v2, "SLOWEST"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;->SLOWEST:Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    .line 24
    new-instance v1, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    const/high16 v2, 0x3f400000    # 0.75f

    const-string v4, "SLOW"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;->SLOW:Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    .line 28
    new-instance v2, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v6, "NOMAL"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;-><init>(Ljava/lang/String;IF)V

    sput-object v2, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;->NOMAL:Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    .line 32
    new-instance v4, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    const/high16 v6, 0x3fc00000    # 1.5f

    const-string v8, "FAST"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;-><init>(Ljava/lang/String;IF)V

    sput-object v4, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;->FAST:Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    .line 36
    new-instance v6, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    const/high16 v8, 0x40000000    # 2.0f

    const-string v10, "FASTEST"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;-><init>(Ljava/lang/String;IF)V

    sput-object v6, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;->FASTEST:Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    const/4 v8, 0x5

    .line 16
    new-array v8, v8, [Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;->$VALUES:[Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;->speed:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;
    .locals 1

    .line 16
    const-class v0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    return-object p0
.end method

.method public static values()[Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;
    .locals 1

    .line 16
    sget-object v0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;->$VALUES:[Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    invoke-virtual {v0}, [Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    return-object v0
.end method


# virtual methods
.method public getSpeed()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;->speed:F

    return v0
.end method
