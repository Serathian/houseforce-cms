<script lang="ts">
	import constants from '@/utils/constants';
</script>

<div class="flex h-screen w-screen items-center justify-center bg-muted">
	<div class="flex h-full w-2/3 flex-col items-center justify-center gap-6">
		<div
			class="hover:clr-primary flex h-full max-h-80 w-full items-center justify-center bg-secondary shadow-lg hover:border-spacing-3 hover:border hover:border-primary hover:bg-secondary-foreground hover:shadow-inner"
		>
			<a href={constants.renovation.homeUrl}>
				<span class="text-4xl text-muted">Renovation</span>
			</a>
		</div>
		<div
			class="flex h-full max-h-80 w-full items-center justify-center bg-tertiary to-muted shadow-lg hover:bg-tertiary-foreground hover:shadow-inner"
		>
			<a href={constants.homecare.homeUrl}>
				<span class="text-4xl text-muted">Homecare</span>
			</a>
		</div>
	</div>
</div>
