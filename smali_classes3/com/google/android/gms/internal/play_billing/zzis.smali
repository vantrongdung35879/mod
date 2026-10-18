.class public final Lcom/google/android/gms/internal/play_billing/zzis;
.super Lcom/google/android/gms/internal/play_billing/zzfi;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgm;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzis;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:J

.field private zzj:J

.field private zzk:Z

.field private zzl:I

.field private zzm:I

.field private zzn:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzis;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzis;->zzb:Lcom/google/android/gms/internal/play_billing/zzis;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzis;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzw(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzA(Lcom/google/android/gms/internal/play_billing/zzis;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzl:I

    return-void
.end method

.method static synthetic zzB(Lcom/google/android/gms/internal/play_billing/zzis;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzm:I

    return-void
.end method

.method static synthetic zzC(Lcom/google/android/gms/internal/play_billing/zzis;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzh:I

    return-void
.end method

.method static synthetic zzD(Lcom/google/android/gms/internal/play_billing/zzis;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzi:J

    return-void
.end method

.method static synthetic zzE(Lcom/google/android/gms/internal/play_billing/zzis;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzj:J

    return-void
.end method

.method static synthetic zzF(Lcom/google/android/gms/internal/play_billing/zzis;J)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    const-wide/32 p1, 0x2e0d0066

    iput-wide p1, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzn:J

    return-void
.end method

.method static synthetic zzG(Lcom/google/android/gms/internal/play_billing/zzis;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzH(Lcom/google/android/gms/internal/play_billing/zzis;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzk:Z

    return-void
.end method

.method static synthetic zzI(Lcom/google/android/gms/internal/play_billing/zzis;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzJ(Lcom/google/android/gms/internal/play_billing/zzis;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzis;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/play_billing/zziq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzis;->zzb:Lcom/google/android/gms/internal/play_billing/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzl()Lcom/google/android/gms/internal/play_billing/zzfe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zziq;

    return-object v0
.end method

.method static bridge synthetic zzd()Lcom/google/android/gms/internal/play_billing/zzis;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzis;->zzb:Lcom/google/android/gms/internal/play_billing/zzis;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzis;->zzb:Lcom/google/android/gms/internal/play_billing/zzis;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zziq;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/play_billing/zziq;-><init>(Lcom/google/android/gms/internal/play_billing/zzir;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzis;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzis;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xb

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v3, "zzd"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string/jumbo v3, "zze"

    aput-object v3, p1, p2

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, v2

    const-string/jumbo p2, "zzh"

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzi"

    aput-object p2, p1, v0

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzj"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzk"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzl"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzm"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzn"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzis;->zzb:Lcom/google/android/gms/internal/play_billing/zzis;

    const-string p3, "\u0004\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0002\u0003\u1004\u0003\u0004\u1002\u0004\u0005\u1008\u0001\u0006\u1002\u0005\u0007\u1007\u0006\u0008\u1004\u0007\t\u1004\u0008\n\u1002\t"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzis;->zzt(Lcom/google/android/gms/internal/play_billing/zzgl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
