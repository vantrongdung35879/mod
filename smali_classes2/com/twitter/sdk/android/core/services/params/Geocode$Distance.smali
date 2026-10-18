.class public final enum Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;
.super Ljava/lang/Enum;
.source "Geocode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/services/params/Geocode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Distance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

.field public static final enum KILOMETERS:Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

.field public static final enum MILES:Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;


# instance fields
.field public final identifier:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;
    .locals 3

    const/4 v0, 0x2

    .line 35
    new-array v0, v0, [Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    sget-object v1, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;->MILES:Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;->KILOMETERS:Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    const/4 v1, 0x0

    const-string v2, "mi"

    const-string v3, "MILES"

    invoke-direct {v0, v3, v1, v2}, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;->MILES:Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    .line 37
    new-instance v0, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    const/4 v1, 0x1

    const-string v2, "km"

    const-string v3, "KILOMETERS"

    invoke-direct {v0, v3, v1, v2}, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;->KILOMETERS:Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    .line 35
    invoke-static {}, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;->$values()[Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;->$VALUES:[Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;->identifier:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    const-class v0, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    return-object p0
.end method

.method public static values()[Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;
    .locals 1

    .line 35
    sget-object v0, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;->$VALUES:[Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    invoke-virtual {v0}, [Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    return-object v0
.end method
