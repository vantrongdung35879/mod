.class final Lcom/google/android/gms/internal/play_billing/zzbr;
.super Lcom/google/android/gms/internal/play_billing/zzbn;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzbt;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzbt;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzbn;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzbr;->zza:Lcom/google/android/gms/internal/play_billing/zzbt;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbr;->zza:Lcom/google/android/gms/internal/play_billing/zzbt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbt;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
