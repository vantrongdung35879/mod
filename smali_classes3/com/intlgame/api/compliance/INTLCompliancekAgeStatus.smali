.class public final enum Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;
.super Ljava/lang/Enum;
.source "INTLCompliancekAgeStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

.field public static final enum Minor:Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

.field public static final enum kAgeStatusAdult:Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

.field public static final enum kAgeStatusUnknown:Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;
    .locals 3

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    sget-object v1, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;->Minor:Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;->kAgeStatusUnknown:Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;->kAgeStatusAdult:Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    const/4 v1, -0x1

    const-string v2, "Minor"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;->Minor:Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    .line 6
    new-instance v0, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    const-string v1, "kAgeStatusUnknown"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;->kAgeStatusUnknown:Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    .line 7
    new-instance v0, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    const-string v1, "kAgeStatusAdult"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;->kAgeStatusAdult:Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    .line 3
    invoke-static {}, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;->$values()[Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    move-result-object v0

    sput-object v0, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;->$VALUES:[Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;
    .locals 1

    .line 3
    const-class v0, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    return-object p0
.end method

.method public static values()[Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;
    .locals 1

    .line 3
    sget-object v0, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;->$VALUES:[Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    invoke-virtual {v0}, [Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/intlgame/api/compliance/INTLCompliancekAgeStatus;->value:I

    return v0
.end method
